-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d3f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if l_0_0 then
  if not (string.find)(l_0_0, "^c:\\") then
    return mp.CLEAN
  end
  if (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "\\game", 1, true) then
    return mp.CLEAN
  end
end
local l_0_1 = (bm.get_current_process_startup_info)()
;
(bm.request_SMS)(l_0_1.ppid, "M")
;
(bm.add_action)("SmsAsyncScanEvent", 1000)
return mp.INFECTED

