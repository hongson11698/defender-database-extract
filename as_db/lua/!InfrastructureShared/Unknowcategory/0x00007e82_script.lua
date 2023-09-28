-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e82_luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
local l_0_1 = (mp.GetBruteMatchData)()
local l_0_2 = l_0_1.match_offset + 1
local l_0_3 = l_0_1.match_offset + 1 + 512
if l_0_1.is_header then
  l_0_0 = ((tostring(headerpage)):sub(l_0_2, l_0_3)):lower()
else
  l_0_0 = ((tostring(footerpage)):sub(l_0_2, l_0_3)):lower()
end
local l_0_4 = l_0_0:match("([^:]+:)")
if not l_0_4 then
  return mp.CLEAN
end
if (string.len)(l_0_4) >= (string.len)(l_0_0) then
  return mp.CLEAN
end
if l_0_4:find("post/owa/", 1, true) and l_0_4:find("powershell", 1, true) and l_0_0:find("x-owa-explicitlogonuser:", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

