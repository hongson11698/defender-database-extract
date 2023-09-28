-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d8d7327fc511\0x0000023f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = l_0_1:match("([^\\]+)$")
  local l_0_3 = {}
  l_0_3["supportassistagent.exe"] = true
  l_0_3["printixservice.exe"] = true
  l_0_3["vpnagent.exe"] = true
  l_0_3["ossec-agent.exe"] = true
  l_0_3["pangps.exe"] = true
  l_0_3["cthwiprvservice.exe"] = true
  l_0_3["ctesdursvc.exe"] = true
  l_0_3["node.exe"] = true
  l_0_3["heimdal.darklayerguard.exe"] = true
  l_0_3["fortisslvpndaemon.exe"] = true
  l_0_3["ccmexec.exe"] = true
  l_0_3["gpscript.exe"] = true
  l_0_3["mpcmdrun.exe"] = true
  l_0_3["mssense.exe"] = true
  l_0_3["senseir.exe"] = true
  l_0_3["solsticeclient.exe"] = true
  if l_0_3[l_0_2] then
    return mp.CLEAN
  end
end
do
  if IsTacticObservedForParents(l_0_0.ppid, "ttexclusion", 3) then
    return mp.CLEAN
  end
  TrackPidAndTechnique("CMDHSTR", "T1016", "network_discovery")
  if IsDetectionThresholdMet("CMDHSTR") then
    return mp.INFECTED
  end
  return mp.CLEAN
end

