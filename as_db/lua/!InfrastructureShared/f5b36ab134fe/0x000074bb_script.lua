-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\f5b36ab134fe\0x000074bb_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
;
(bm.request_SMS)(l_0_0.ppid, "H")
TrackCustomPersistContextNameByPPID("set", l_0_0.ppid, "MimikatzTrigger")
;
(bm.add_action)("SmsAsyncScanEvent", 1000)
return mp.INFECTED

