-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000ce5_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetUACMetadata)()
if l_0_0 ~= nil and ((MpCommon.GetProcessElevationAndIntegrityLevel)((string.format)("pid:%u", l_0_0.RequestorPid))).IntegrityLevel == MpCommon.SECURITY_MANDATORY_LOW_RID then
  return mp.SYNCLOWFI
end
return mp.CLEAN

