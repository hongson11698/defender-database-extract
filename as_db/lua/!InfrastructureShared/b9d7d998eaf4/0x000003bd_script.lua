-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\b9d7d998eaf4\0x000003bd_luac 

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
  if ({["net.exe"] = true, ["gc_service.exe"] = true})[((string.lower)(l_0_3)):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
do
  if l_0_2 ~= nil and l_0_3 ~= nil then
    TrackPidAndTechnique(l_0_2, "T1069", "permission_groups_discovery")
    if IsDetectionThresholdMet("CMDHSTR") then
      return mp.LOWFI
    end
  end
  return mp.LOWFI
end

