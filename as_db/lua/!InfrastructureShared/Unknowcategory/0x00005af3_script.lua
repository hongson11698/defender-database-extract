-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005af3_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  (MpCommon.RequestSmsOnProcess)(l_0_0.ppid, MpCommon.SMS_SCAN_MED)
  ;
  (mp.SMSAsyncScan)(l_0_0.ppid)
end
return mp.LOWFI

