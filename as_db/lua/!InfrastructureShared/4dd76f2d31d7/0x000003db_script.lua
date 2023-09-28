-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4dd76f2d31d7\0x000003db_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil or l_0_0.ppid == nil or l_0_0.image_path == nil then
  return mp.CLEAN
end
if IsPidExcluded(l_0_0.ppid) then
  return mp.CLEAN
end
local l_0_1 = GetTacticsTableForPid(l_0_0.ppid)
if l_0_1.winrshost_childproc or l_0_1.wsmprovhost_childproc or l_0_1.wmi_childproc or l_0_1.remotedropexe_childproc or l_0_1.python_childproc or l_0_1.rundll32_childproc or l_0_1.wscript_childproc or l_0_1.cscript_childproc or l_0_1.mshta_childproc or l_0_1.webshell_childproc or l_0_1.exec_remotedroppedscript_a then
  return mp.INFECTED
end
TrackPidAndTechnique("CMDHSTR", "T1021.006", "lolbin_winrm")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
return mp.LOWFI

