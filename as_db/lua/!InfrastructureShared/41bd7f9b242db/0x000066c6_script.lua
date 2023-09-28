-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\41bd7f9b242db\0x000066c6_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 ~= nil then
  TrackCustomPersistContextNameByPPID("set", l_0_0, "MimikatzTrigger")
  ;
  (MpCommon.RequestSmsOnProcess)(l_0_0, MpCommon.SMS_SCAN_MED)
end
return mp.INFECTED

