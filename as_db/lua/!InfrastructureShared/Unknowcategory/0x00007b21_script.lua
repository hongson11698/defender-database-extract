-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b21_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)(tostring(headerpage))
local l_0_1 = l_0_0:match("==(%w+)msscriptcontrol.scriptcontrol")
local l_0_2 = (mp.GetBruteMatchData)()
local l_0_3 = l_0_2.match_offset + 1
local l_0_4 = 95
local l_0_5 = ""
if l_0_2.is_header then
  l_0_5 = l_0_0:sub(l_0_3, l_0_3 + l_0_4)
else
  l_0_5 = (string.lower)((tostring(footerpage)):sub(l_0_3, l_0_3 + l_0_4))
end
if l_0_1 ~= nil and l_0_5:match(l_0_1) then
  return mp.INFECTED
end
return mp.CLEAN

