-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005a4e_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PACKED_WITH:(Base64)") and ((mp.getfilename)()):match(".dll") then
  return mp.INFECTED
end
return mp.CLEAN

