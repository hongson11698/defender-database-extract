-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\63d74d6ca203\0x00000604_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
if l_0_0.ppid == nil then
  return mp.CLEAN
end
TrackPidAndTechnique(l_0_0.ppid, "T1040", "Network_Sniffing_cmd")
local l_0_1 = GetTacticsTableForPid(l_0_0.ppid)
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = 0
for l_0_6,l_0_7 in pairs(l_0_1) do
  if (string.find)(l_0_6, "mt2023", 1, true) then
    l_0_2 = l_0_2 + 1
  end
end
if l_0_2 > 2 then
  return mp.INFECTED
end
return mp.CLEAN

