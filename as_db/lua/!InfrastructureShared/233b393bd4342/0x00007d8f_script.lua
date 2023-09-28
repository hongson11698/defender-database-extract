-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\233b393bd4342\0x00007d8f_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 300000000 then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 == nil or #l_0_0 <= 15 or (string.sub)(l_0_0, -12) ~= "\\spoolsv.exe" then
  return mp.CLEAN
end
local l_0_1 = (bm.get_current_process_startup_info)()
TrackCustomPersistContextNameByPPID("set", l_0_1.ppid, "MimikatzTrigger")
;
(bm.add_action)("SmsAsyncScanEvent", 1000)
return mp.INFECTED

