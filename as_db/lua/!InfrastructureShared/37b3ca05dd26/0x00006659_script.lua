-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\37b3ca05dd26\0x00006659_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
;
(bm.request_SMS)(l_0_0.ppid, "H")
;
(bm.add_action)("SmsAsyncScanEvent", 1)
reportRelatedBmHits()
return mp.INFECTED

