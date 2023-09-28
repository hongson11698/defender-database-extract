-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007c94_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((this_sigattrlog[5]).utf8p1)
if l_0_0 == nil or (string.find)(l_0_0, "c:\\", 1, true) == nil then
  return mp.CLEAN
end
if (sysio.IsFileExists)(l_0_0) then
  (bm.add_related_file)(l_0_0)
end
local l_0_1 = (bm.get_current_process_startup_info)()
if l_0_1 ~= nil and l_0_1.ppid ~= nil then
  (bm.request_SMS)(l_0_1.ppid, "m")
  ;
  (bm.add_action)("SmsAsyncScanEvent", 1)
end
return mp.INFECTED

