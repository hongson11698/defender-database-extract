-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007c4f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetBruteMatchData)()
local l_0_1 = l_0_0.match_offset
local l_0_2 = ""
if l_0_0.is_header then
  l_0_2 = (tostring(headerpage)):sub(l_0_1 - 256, l_0_1 + 1)
  l_0_2 = (string.gsub)(l_0_2, "(.)(.)", "%2")
else
  l_0_2 = (tostring(footerpage)):sub(l_0_1 - 256, l_0_1 + 1)
  l_0_2 = (string.gsub)(l_0_2, "(.)(.)", "%2")
end
l_0_2 = (string.lower)(l_0_2)
if (string.find)(l_0_2, ".connected -or $", 1, true) then
  return mp.INFECTED
end
return mp.LOWFI

