-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\cdd7b1a8490d\0x000008b2_luac 

-- params : ...
-- function num : 0
local l_0_0 = GetRealPidForScenario("CMDHSTR")
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetScannedPPID)()
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (mp.GetProcessCommandLine)(l_0_1)
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = (string.lower)(l_0_2)
local l_0_4 = l_0_3:match("/maxsize=(%d+)%%")
if l_0_4 ~= nil and tonumber(l_0_4) > 5 then
  return mp.CLEAN
end
l_0_4 = l_0_3:match("/maxsize=(%d+)gb")
if l_0_4 ~= nil and tonumber(l_0_4) > 2 then
  return mp.CLEAN
end
l_0_4 = l_0_3:match("/maxsize=(%d+)mb")
if l_0_4 ~= nil and tonumber(l_0_4) > 2000 then
  return mp.CLEAN
end
local l_0_5 = (mp.GetParentProcInfo)()
if l_0_5 == nil or l_0_5.ppid == nil or l_0_5.image_path == nil then
  return mp.CLEAN
end
local l_0_6 = l_0_5.image_path
local l_0_7 = (string.lower)(l_0_6:match("([^\\]+)$"))
local l_0_8 = {}
l_0_8["ccmexec.exe"] = true
l_0_8["gpscript.exe"] = true
l_0_8["mpcmdrun.exe"] = true
l_0_8["mssense.exe"] = true
l_0_8["senseir.exe"] = true
if l_0_8[l_0_7] then
  return mp.CLEAN
end
if IsPidExcluded(l_0_0) or IsPidExcluded(l_0_5.ppid) then
  return mp.CLEAN
end
TrackPidAndTechnique(l_0_0, "T1490", "shadowcopy_delete_resize")
if IsTacticObservedForParents(l_0_0, "susp_ransomware", 2) then
  return mp.INFECTED
end
local l_0_9 = GetTacticsTableForPid(l_0_5.ppid)
if l_0_9.winrshost_childproc or l_0_9.wsmprovhost_childproc or l_0_9.wmi_childproc or l_0_9.remotedropexe_childproc or l_0_9.python_childproc or l_0_9.rundll32_childproc or l_0_9.wscript_childproc or l_0_9.cscript_childproc or l_0_9.mshta_childproc or l_0_9.webshell_childproc or l_0_9.exec_remotedroppedscript_a or l_0_9.folderguard_blk or l_0_9.folderguard_folder_blk then
  return mp.INFECTED
end
return mp.INFECTED

