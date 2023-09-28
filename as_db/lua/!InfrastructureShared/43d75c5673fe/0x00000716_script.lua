-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\43d75c5673fe\0x00000716_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
if l_0_0.image_path == nil or l_0_0.image_path == "" then
  return mp.CLEAN
end
if contains(l_0_0.image_path, "psexesvc") then
  return mp.INFECTED
end
return mp.CLEAN

