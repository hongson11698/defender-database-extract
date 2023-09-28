-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\186d7964f43c4\0x00000078_luac 

-- params : ...
-- function num : 0
local l_0_0 = GetRealPidForScenario("CMDHSTR")
if IsPidExcluded(l_0_0) then
  return mp.CLEAN
end
local l_0_1 = (mp.GetParentProcInfo)()
do
  if l_0_1 ~= nil then
    local l_0_2 = (string.lower)(l_0_1.image_path)
    if #l_0_2 > 54 and l_0_2:find("microsoft.office.datacenter.torus.powershellworker.exe$") then
      return mp.CLEAN
    end
  end
  if IsDetectionThresholdMet(l_0_0) or IsTacticObservedForParents(l_0_0, "remoteservice-target", 3) or IsTacticObservedForParents(l_0_0, "exec_remotely_dropped_unsigned", 3) then
    return mp.INFECTED
  end
  if IsTacticObservedGlobal("susp_ransomware") then
    return mp.INFECTED
  end
  return mp.CLEAN
end

