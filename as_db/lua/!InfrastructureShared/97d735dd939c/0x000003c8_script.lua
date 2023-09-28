-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\97d735dd939c\0x000003c8_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = l_0_1:match("([^\\]+)$")
  local l_0_3 = {}
  l_0_3["log-agent.exe"] = true
  l_0_3["unitypackagemanager.exe"] = true
  l_0_3["tmacserverservice.exe"] = true
  l_0_3["ossec-agent.exe"] = true
  if l_0_3[l_0_2] then
    return mp.CLEAN
  end
end
do
  TrackPidAndTechnique("CMDHSTR", "T1082", "system_discovery")
  if IsDetectionThresholdMet("CMDHSTR") or (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") then
    return mp.INFECTED
  end
  return mp.CLEAN
end

