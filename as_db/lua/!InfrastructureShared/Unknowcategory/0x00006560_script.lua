-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006560_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == nil then
  return mp.CLEAN
end
;
(MpCommon.RequestSmsOnProcess)(l_0_0, MpCommon.SMS_SCAN_HIGH)
;
(mp.AddDeferredBMAction)("SmsAsyncScanEvent", 5000)
return mp.INFECTED

