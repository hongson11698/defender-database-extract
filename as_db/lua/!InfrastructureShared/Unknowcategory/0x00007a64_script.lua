-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007a64_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetBruteMatchData)()
local l_0_1 = ""
if l_0_0.is_header then
  l_0_1 = (string.lower)(tostring(headerpage))
else
  l_0_1 = (string.lower)(tostring(footerpage))
end
l_0_1 = (string.gsub)(l_0_1, " ", "")
l_0_1 = (string.gsub)(l_0_1, "`", "")
if (string.find)(l_0_1, "globalassemblycache", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

