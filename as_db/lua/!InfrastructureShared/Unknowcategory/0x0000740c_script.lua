-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000740c_luac 

-- params : ...
-- function num : 0
if not (this_sigattrlog[1]).ppid then
  return mp.CLEAN
end
local l_0_0 = (MpCommon.GetProcessElevationAndIntegrityLevel)((this_sigattrlog[1]).ppid)
if MpCommon.SECURITY_MANDATORY_SYSTEM_RID <= l_0_0.IntegrityLevel then
  (bm.trigger_sig)("EOP", "SYSTEM")
end
return mp.CLEAN

