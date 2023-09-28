-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\81d72615f0b6\0x000003d3_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = l_0_1:match("([^\\]+)$")
  local l_0_3 = {}
  l_0_3["ossec-agent.exe"] = true
  l_0_3["911 location manager.exe"] = true
  l_0_3["ltsvc.exe"] = true
  l_0_3["synchronizerweb.exe"] = true
  l_0_3["rocketleague.exe"] = true
  l_0_3["wssad.exe"] = true
  if l_0_3[l_0_2] then
    return mp.CLEAN
  end
end
do
  local l_0_4 = (mp.GetProcessCommandLine)(l_0_0.ppid)
  if l_0_4 ~= nil then
    l_0_4 = (string.lower)(l_0_4)
    if l_0_4:find("uninstallservice.cmd") or l_0_4:find("ltrestart.bat") then
      return mp.CLEAN
    end
  end
  TrackPidAndTechnique("CMDHSTR", "T1018", "remote_system_discovery")
  if IsDetectionThresholdMet("CMDHSTR") then
    return mp.LOWFI
  end
  return mp.LOWFI
end

