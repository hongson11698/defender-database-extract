-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1c1d7fd4d34dc\0x00007557_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 ~= nil then
  (MpCommon.RequestSmsOnProcess)(l_0_0, MpCommon.SMS_SCAN_MED)
end
local l_0_1 = (mp.GetParentProcInfo)()
if l_0_1 ~= nil then
  (MpCommon.RequestSmsOnProcess)(l_0_1.ppid, MpCommon.SMS_SCAN_MED)
  TrackPidAndTechnique(l_0_1.ppid, "T1562.001", "mptamper_av")
end
return mp.LOWFI

