-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\95b35faae0d4\0x0000766a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = l_0_0.ppid
if l_0_1 ~= nil then
  TrackPidAndTechniqueBM(l_0_1, "T1055.012", "processhollowing_target")
  ;
  (bm.request_SMS)(l_0_1, "m+")
  ;
  (bm.add_action)("SmsAsyncScanEvent", 1)
end
return mp.INFECTED

