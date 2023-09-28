-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00004fe1_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("BM_DEVICE_DRIVER") and (mp.get_mpattribute)("BM_MZ_DLL") then
  return mp.INFECTED
end
return mp.CLEAN

