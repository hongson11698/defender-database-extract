-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9fb351780e1a\0x00007ea6_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = l_0_0.command_line
if l_0_1 ~= nil then
  local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
    if (sysio.IsFileExists)(l_0_7) and not (mp.IsKnownFriendlyFile)(l_0_7, true, false) then
      (bm.add_related_file)(l_0_7)
    end
  end
end
do
  l_0_2 = sms_untrusted_process
  l_0_2()
  l_0_2 = reportSessionInformation
  l_0_2()
  l_0_2 = TrackPidAndTechniqueBM
  l_0_2("BM", "T1490", "inhibit_system_recovery")
  l_0_2 = mp
  l_0_2 = l_0_2.INFECTED
  return l_0_2
end

