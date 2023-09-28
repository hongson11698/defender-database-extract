-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\7db39d8299f5\0x000001c1_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p1 ~= nil then
  local l_0_0 = (string.lower)((bm.get_imagepath)())
  if l_0_0 and ((string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "\\sysmon", 1, true) or (string.find)(l_0_0, "\\sophos", 1, true) or (string.find)(l_0_0, "\\threatsonar", 1, true) or (string.find)(l_0_0, "tenable_mw_scan", 1, true) or (string.find)(l_0_0, "\\cynetms", 1, true) or (string.find)(l_0_0, "\\xenldr", 1, true)) then
    return mp.CLEAN
  end
  local l_0_1 = (string.match)((this_sigattrlog[5]).utf8p1, "(%d+):")
  l_0_1 = tonumber(l_0_1)
  local l_0_2 = (mp.GetPPidFromPid)(l_0_1)
  if l_0_2 == nil then
    return mp.CLEAN
  end
  local l_0_3 = (MpCommon.GetImagePathFromPid)(l_0_2)
  if l_0_3 and (string.find)(l_0_3:lower(), "\\windows\\system32\\lsass.exe", 1, true) then
    local l_0_4 = (bm.get_current_process_startup_info)()
    ;
    (bm.request_SMS)(l_0_4.ppid, "H")
    TrackCustomPersistContextNameByPPID("set", l_0_4.ppid, "MimikatzTrigger")
    ;
    (bm.add_action)("SmsAsyncScanEvent", 1000)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

