-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007531_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 6 then
  return mp.INFECTED
end
if (mp.get_mpattribute)("CallsRtlDecompressBuffer") and peattributes.pea_dt_error_not_enough_memory then
  (pe.set_peattribute)("enable_vmm_grow", true)
  ;
  (pe.reemulate)()
end
return mp.CLEAN

