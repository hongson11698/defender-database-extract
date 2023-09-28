-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\84b30f93aaa0\0x000006b0_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil then
  if l_0_0.command_line ~= nil then
    bm_AddRelatedFileFromCommandLine(l_0_0.command_line)
  end
  ;
  (bm.request_SMS)(l_0_0.ppid, "m")
  ;
  (bm.add_action)("SmsAsyncScanEvent", 1000)
end
return mp.INFECTED

