-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\61b3c212ed7f\0x000004be_luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1003.002", "credentialdumping")
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = l_0_0.command_line
local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
for l_0_6,l_0_7 in ipairs(l_0_2) do
  if (sysio.IsFileExists)(l_0_7) and not (mp.IsKnownFriendlyFile)(l_0_7, true, false) then
    (bm.add_related_file)(l_0_7)
  end
end
return mp.INFECTED
