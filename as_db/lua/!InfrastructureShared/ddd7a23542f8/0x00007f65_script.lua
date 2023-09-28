-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\ddd7a23542f8\0x00007f65_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.GetProcessCommandLine)(l_0_0))
local l_0_2 = false
local l_0_3 = "(set-service[\\w\\s-]+(windefend|microsoft defender antivirus service)[\\w\\s-]+(disabled|manual))"
l_0_2 = (MpCommon.StringRegExpSearch)(l_0_3, l_0_1)
if l_0_2 == false then
  return mp.CLEAN
end
local l_0_4 = (mp.GetParentProcInfo)()
if l_0_4 ~= nil then
  (MpCommon.RequestSmsOnProcess)(l_0_4.ppid, MpCommon.SMS_SCAN_MED)
  TrackPidAndTechnique(l_0_4.ppid, "T1562.001", "mptamper_av")
end
if not isTamperProtectionOn() then
  return mp.LOWFI
end
return mp.INFECTED

