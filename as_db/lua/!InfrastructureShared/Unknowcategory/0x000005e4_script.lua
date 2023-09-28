-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000005e4_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil and l_0_0.image_path ~= nil and l_0_0.ppid ~= nil then
  if (string.find)(l_0_0.image_path, "/opt/safebreach/simulator/app/sbsimulation", 1, true) then
    return mp.INFECTED
  end
  local l_0_1 = (mp.GetParentProcInfo)(l_0_0.ppid)
  if l_0_1 ~= nil and l_0_1.image_path ~= nil and l_0_1.ppid ~= nil and (string.find)(l_0_1.image_path, "/opt/safebreach/simulator/app/sbsimulation", 1, true) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

