-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2ed740417189\0x000003e0_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  if IsPidExcluded(l_0_0.ppid) then
    return mp.CLEAN
  end
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = l_0_1:match("([^\\]+)$")
  local l_0_3 = {}
  l_0_3["ossec-agent.exe"] = true
  l_0_3["911 location manager.exe"] = true
  l_0_3["pdqinventoryscanner.exe"] = true
  l_0_3["exechostserver64.exe"] = true
  if l_0_3[l_0_2] then
    return mp.CLEAN
  end
end
do
  local l_0_4 = (mp.GetProcessCommandLine)(l_0_0.ppid)
  if l_0_4 ~= nil then
    l_0_4 = (string.lower)(l_0_4)
    if l_0_4:find("uninstallservice.cmd") then
      return mp.CLEAN
    end
  end
  TrackPidAndTechnique("CMDHSTR", "T1018", "remote_system_discovery")
  if IsDetectionThresholdMet("CMDHSTR") then
    return mp.INFECTED
  end
  local l_0_5 = GetTacticsTableForPid(l_0_0.ppid)
  if l_0_5.winrshost_childproc or l_0_5.wsmprovhost_childproc or l_0_5.wmi_childproc or l_0_5.remotedropexe_childproc or l_0_5.python_childproc or l_0_5.rundll32_childproc or l_0_5.wscript_childproc or l_0_5.cscript_childproc or l_0_5.mshta_childproc or l_0_5.webshell_childproc or l_0_5.exec_remotedroppedscript_a then
    return mp.INFECTED
  end
  return mp.LOWFI
end

