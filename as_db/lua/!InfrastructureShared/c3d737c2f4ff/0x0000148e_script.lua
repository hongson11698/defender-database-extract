-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\c3d737c2f4ff\0x0000148e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
local l_0_1 = (mp.GetScannedPPID)()
local l_0_2 = (mp.GetProcessCommandLine)(l_0_1)
if (not (string.match)(l_0_2, "%Wpassword[%W$]") and not (string.match)(l_0_2, "%Wpass[%W$]") and not (string.match)(l_0_2, "%Wpw[%W$]") and not (string.match)(l_0_2, "%Wkey[%W$]") and not (string.match)(l_0_2, "%W-p[%W$]") and not (string.match)(l_0_2, "%Wuser[%W$]") and not (string.match)(l_0_2, "%Wcredentials[%W$]") and not (string.match)(l_0_2, "%Wmysql[%W$]") and not (string.match)(l_0_2, "%Wtelnet[%W$]") and not (string.match)(l_0_2, "%Wssh[%W$]") and not (string.match)(l_0_2, "%Wroot[%W$]")) or l_0_0 == nil then
  return mp.CLEAN
end
TrackPidAndTechnique(l_0_0.ppid, "T1552.001", "CredentialAccess_BashHistoryCredentials")
return mp.LOWFI

