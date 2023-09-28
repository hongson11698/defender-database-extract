-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006416_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.isdll == true and (mp.get_mpattribute)("NID:Win64/IcedId.PAE!MTB") and l_0_0 > 241664 and l_0_0 < 249856 then
  return mp.INFECTED
end
return mp.CLEAN

