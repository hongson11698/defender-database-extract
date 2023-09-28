-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008041_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 200000000 then
  return mp.CLEAN
end
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil and (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[2]).utf8p1)
  local l_0_1 = (string.match)((this_sigattrlog[5]).utf8p2, ";regionsize:(%d+)")
  if l_0_1 == nil then
    return mp.CLEAN
  end
  if (string.find)(l_0_0, ";destport=80;", 1, true) or (string.find)(l_0_0, ";destport=443;", 1, true) then
    return mp.CLEAN
  end
  if tonumber(l_0_1) < 110000 then
    return mp.CLEAN
  end
  local l_0_2 = (bm.get_current_process_startup_info)()
  ;
  (bm.request_SMS)(l_0_2.ppid, "M")
  ;
  (bm.add_action)("SmsAsyncScanEvent", 1000)
  return mp.INFECTED
end
do
  return mp.CLEAN
end

