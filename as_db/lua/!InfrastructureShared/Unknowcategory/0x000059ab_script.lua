-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000059ab_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 49152 and l_0_0 <= 57344 and (mp.get_mpattribute)("NID:Win64/Atosev.PA!MTB") then
  return mp.INFECTED
end
return mp.CLEAN

