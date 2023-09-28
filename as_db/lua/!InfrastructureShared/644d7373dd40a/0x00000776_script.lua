-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\644d7373dd40a\0x00000776_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil and (string.lower)((string.sub)(l_0_0.image_path, -8)) == "w3wp.exe" then
  local l_0_1 = l_0_0.ppid
  if l_0_1 == "" or l_0_1 == nil then
    return mp.CLEAN
  end
  local l_0_2 = (mp.GetProcessCommandLine)(l_0_1)
  if l_0_2 == "" or l_0_2 == nil then
    return mp.CLEAN
  end
  l_0_2 = (string.lower)(l_0_2)
  if (string.find)(l_0_2, "-ap \"msexchangeecpapppool\"", 1, true) or (string.find)(l_0_2, "-ap \"msexchangeowaapppool\"", 1, true) or (string.find)(l_0_2, "-ap \"msexchangeoabapppool\"", 1, true) or (string.find)(l_0_2, "-ap \"msexchangeowacalendarapppool\"", 1, true) or (string.find)(l_0_2, "-ap \"msexchangeservicesapppool\"", 1, true) or (string.find)(l_0_2, "-ap \"msexchangeautodiscoverapppool\"", 1, true) or (string.find)(l_0_2, "-ap \"msexchangemapifrontendapppool\"", 1, true) then
    TrackPidAndTechnique(l_0_1, "T1505.003", "webshell_parent", 86400)
    return mp.INFECTED
  end
  if (string.find)(l_0_2, "-ap \"msexchangepowershellapppool\"", 1, true) then
    local l_0_3 = (mp.GetScannedPPID)()
    local l_0_4 = (MpCommon.GetProcessElevationAndIntegrityLevel)(l_0_3)
    if l_0_4 and MpCommon.SECURITY_MANDATORY_SYSTEM_RID <= l_0_4.IntegrityLevel then
      TrackPidAndTechnique(l_0_1, "T1505.003", "webshell_parent", 86400)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

