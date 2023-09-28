-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\65b3bacfc721\0x000009d7_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
if l_0_1 ~= nil then
  for l_0_5,l_0_6 in ipairs(l_0_1) do
    if l_0_6.image_path ~= nil and l_0_6.reason == bm.RELATIONSHIP_INJECTION then
      local l_0_7 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
      local l_0_8 = (bm.get_current_process_startup_info)()
      if (sysio.IsFileExists)(l_0_7) and not (mp.IsKnownFriendlyFile)(l_0_7, true, false) then
        (bm.request_SMS)(l_0_8.ppid, "h+")
        ;
        (bm.add_action)("SmsAsyncScanEvent", 1)
      end
      local l_0_9 = (string.lower)((MpCommon.PathToWin32Path)(l_0_6.image_path))
      if (string.find)(l_0_9, "\\explorer.exe", -13, true) then
        (bm.request_SMS)(l_0_6.ppid, "h+")
        ;
        (bm.add_action)("SmsAsyncScanEvent", 1)
        ;
        (bm.trigger_sig)("Explorer", "InjectQueueUserAPC")
        TrackPidAndTechniqueBM("BM", "T1055.002", "portable_executable_injection")
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

