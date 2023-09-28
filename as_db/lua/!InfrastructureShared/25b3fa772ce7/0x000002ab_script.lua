-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\25b3fa772ce7\0x000002ab_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = l_0_0.ppid
if l_0_1 ~= nil then
  TrackPidAndTechniqueBM(l_0_1, "T1055.012", "processhollowing_target")
  ;
  (bm.request_SMS)(l_0_1, "M")
  ;
  (bm.add_action)("SmsAsyncScanEvent", 1000)
end
return mp.INFECTED

