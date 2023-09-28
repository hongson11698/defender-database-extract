-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000081e2_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
if l_0_0 ~= nil then
  for l_0_5,l_0_6 in ipairs(l_0_0) do
    if l_0_6.image_path ~= nil and l_0_6.reason == bm.RELATIONSHIP_INJECTION then
      local l_0_7 = (string.lower)((MpCommon.PathToWin32Path)(l_0_6.image_path))
      if (string.find)(l_0_7, "\\comodo internet security\\cavwp.exe", -35, true) or (string.find)(l_0_7, "\\hummingheads\\securityplatform\\bkhost.exe", -41, true) then
        return mp.CLEAN
      end
    end
  end
end
do
  if l_0_1 ~= nil then
    for l_0_11,l_0_12 in ipairs(l_0_1) do
      if l_0_12.image_path ~= nil and l_0_12.reason == bm.RELATIONSHIP_INJECTION then
        local l_0_13 = (string.lower)((MpCommon.PathToWin32Path)(l_0_12.image_path))
        if (string.find)(l_0_13, "\\acrord32.exe", -13, true) or (string.find)(l_0_13, "\\adobearm.exe", -13, true) or (string.find)(l_0_13, "\\comodo internet security\\cavwp.exe", -35, true) or (string.find)(l_0_13, "\\acrobat reader dc\\reader\\reader_sl.exe", -39, true) or (string.find)(l_0_13, "\\\\hummingheads\\securityplatform\\bkhost.exe", -41, true) or (string.find)(l_0_13, "\\rdrcef.exe", -11, true) then
          return mp.CLEAN
        end
        ;
        (bm.request_SMS)(l_0_12.ppid, "l+")
        ;
        (bm.add_action)("SmsAsyncScanEvent", 1)
        ;
        (bm.trigger_sig)("Arya", "Acrord32")
        return mp.INFECTED
      end
    end
  end
  do
    return mp.CLEAN
  end
end

