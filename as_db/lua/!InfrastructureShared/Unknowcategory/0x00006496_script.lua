-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006496_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.ismsil == true and l_0_0 > 589824 and l_0_0 < 720896 and (mp.get_mpattribute)("NID:Trojan:MSIL/TeslaCryptIH") then
  return mp.INFECTED
end
return mp.LOWFI

