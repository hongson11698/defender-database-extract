-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4bd70e926eed\0x000001b7_luac 

-- params : ...
-- function num : 0
local l_0_0 = GetRealPidForScenario("CMDHSTR")
if l_0_0 == nil then
  return mp.CLEAN
end
if IsPidExcluded(l_0_0) then
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
if IsDetectionThresholdMet(l_0_0) or IsTacticObservedForParents(l_0_0, "remoteservice-target", 3) or IsTacticObservedForParents(l_0_0, "exec_remotely_dropped_unsigned", 3) or IsTacticObservedForParents(l_0_0, "processinjection_target", 3) or IsTacticObservedGlobal("susp_ransomware") then
  AppendToRollingQueue("BruteForceNetUse", l_0_2, l_0_1, 3600)
  if GetRollingQueueCount("BruteForceNetUse") > 3 then
    return mp.INFECTED
  end
end
return mp.CLEAN

