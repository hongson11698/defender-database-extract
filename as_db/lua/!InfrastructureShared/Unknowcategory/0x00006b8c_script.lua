-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006b8c_luac 

-- params : ...
-- function num : 0
if not (this_sigattrlog[1]).ppid then
  return mp.CLEAN
end
if MpCommon.SECURITY_MANDATORY_SYSTEM_RID <= ((MpCommon.GetProcessElevationAndIntegrityLevel)((this_sigattrlog[1]).ppid)).IntegrityLevel then
  return mp.INFECTED
end
return mp.CLEAN

