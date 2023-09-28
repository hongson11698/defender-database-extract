-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\afb3f7ef5a36\0x0000087d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 == nil or l_0_0.command_line == nil then
  return mp.CLEAN
end
bm_AddRelatedFileFromCommandLine(l_0_0.command_line, nil, nil, 1)
local l_0_1, l_0_2 = (bm.get_process_relationships)()
for l_0_6,l_0_7 in ipairs(l_0_2) do
  local l_0_8 = (mp.bitand)(l_0_7.reason_ex, bm.RELATIONSHIP_INJECTION)
  if l_0_8 == bm.RELATIONSHIP_INJECTION then
    TrackPidAndTechniqueBM(l_0_7.ppid, "T1055.002", "processinjection_target_remoteinitiated_c")
    ;
    (bm.request_SMS)(l_0_7.ppid, "M")
    ;
    (bm.add_action)("SmsAsyncScanEvent", 1000)
  end
end
TrackPidAndTechniqueBM("BM", "T1055.002", "processinjection_source_remoteinitiated_c")
return mp.INFECTED

