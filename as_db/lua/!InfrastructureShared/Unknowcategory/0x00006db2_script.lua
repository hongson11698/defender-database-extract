-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006db2_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 300000000 then
  return mp.CLEAN
end
local l_0_0 = (bm.get_current_process_startup_info)()
;
(bm.request_SMS)(l_0_0.ppid, "M")
;
(bm.add_action)("SmsAsyncScanEvent", 1000)
return mp.INFECTED

