-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\25b3b4a398ae\0x000013cc_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil then
  TrackPidAndTechniqueBM(l_0_0.ppid, "T1110.001", "CredentialAccess_FtpBruteForceOutgoing")
end
local l_0_1 = (mp.GetParentProcInfo)()
if l_0_1 ~= nil then
  TrackPidAndTechniqueBM(l_0_1.ppid, "T1110.001", "CredentialAccess_FtpBruteForceOutgoing")
end
return mp.INFECTED

