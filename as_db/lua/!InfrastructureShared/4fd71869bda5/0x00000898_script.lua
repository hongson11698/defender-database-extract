-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4fd71869bda5\0x00000898_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetParentProcInfo)()
if l_0_1 == nil or l_0_1.ppid == nil or l_0_1.image_path == nil then
  return mp.CLEAN
end
local l_0_2 = (string.lower)(l_0_1.image_path)
if l_0_2:find("ltsvc.exe$") then
  return mp.CLEAN
end
TrackPidAndTechnique(l_0_0, "T1490", "shadowcopy_delete")
if IsDetectionThresholdMet(l_0_0) or IsDetectionThresholdMet(l_0_1.ppid) then
  return mp.INFECTED
end
local l_0_3 = GetTacticsTableForPid(l_0_1.ppid)
if l_0_3.winrshost_childproc or l_0_3.wsmprovhost_childproc or l_0_3.wmi_childproc or l_0_3.remotedropexe_childproc or l_0_3.python_childproc or l_0_3.rundll32_childproc or l_0_3.wscript_childproc or l_0_3.cscript_childproc or l_0_3.mshta_childproc or l_0_3.webshell_childproc or l_0_3.exec_remotedroppedscript_a or l_0_3.folderguard_blk or l_0_3.folderguard_folder_blk then
  return mp.INFECTED
end
return mp.LOWFI

