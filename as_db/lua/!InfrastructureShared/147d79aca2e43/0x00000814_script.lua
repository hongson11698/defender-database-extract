-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\147d79aca2e43\0x00000814_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
TrackPidAndTechnique("CMDHSTR", "T1218.005", "mshta-parent")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = {}
  l_0_2["svchost.exe"] = true
  l_0_2["taskhostw.exe"] = true
  if l_0_2[l_0_1:match("([^\\]+)$")] then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

