-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\25b317c2eb0b\0x000066d5_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil then
  (bm.request_SMS)(l_0_0.ppid, "M")
  ;
  (bm.add_action)("SmsAsyncScanEvent", 5000)
  return mp.INFECTED
end
return mp.CLEAN

