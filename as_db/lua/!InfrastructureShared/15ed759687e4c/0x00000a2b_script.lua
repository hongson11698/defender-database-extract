-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\15ed759687e4c\0x00000a2b_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2, l_0_3 = nil
if pcall(mp.GetParentProcInfo) and mp.GetParentProcInfo ~= nil then
  l_0_2 = (mp.GetParentProcInfo).ppid
  l_0_3 = (mp.GetParentProcInfo).image_path
  local l_0_4 = nil
  local l_0_5 = nil
  local l_0_6 = nil
  if ({["net.exe"] = true, ["ng bailey image collector.exe"] = true, ["ltsvc.exe"] = true, ["explorer.exe"] = true})[((string.lower)(l_0_3)):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
do
  if l_0_2 ~= nil and l_0_3 ~= nil then
    if IsLegacyOrgMachine() then
      return mp.CLEAN
    end
    if IsPidExcluded(l_0_2) then
      return mp.CLEAN
    end
    TrackPidAndTechnique(l_0_2, "T1087", "account_discovery")
    if IsDetectionThresholdMet(l_0_2) then
      return mp.INFECTED
    end
    if IsTechniqueObservedForPid(l_0_2, "T1071") then
      return mp.INFECTED
    end
    -- DECOMPILER ERROR at PC70: Confused about usage of register: R3 in 'UnsetPending'

    local l_0_7 = nil
    if (GetTacticsTableForPid(l_0_5.ppid)).winrshost_childproc or (GetTacticsTableForPid(l_0_5.ppid)).wsmprovhost_childproc or (GetTacticsTableForPid(l_0_5.ppid)).wmi_childproc or (GetTacticsTableForPid(l_0_5.ppid)).remotedropexe_childproc or (GetTacticsTableForPid(l_0_5.ppid)).python_childproc or (GetTacticsTableForPid(l_0_5.ppid)).mshta_childproc or (GetTacticsTableForPid(l_0_5.ppid)).webshell_childproc or (GetTacticsTableForPid(l_0_5.ppid)).exec_remotedroppedscript_a then
      return mp.INFECTED
    end
  end
  do
    return mp.CLEAN
  end
end

