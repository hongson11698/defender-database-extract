-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\65d76585aa9e\0x00000884_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil or l_0_0.ppid == nil or l_0_0.image_path == nil then
  return mp.CLEAN
end
if not IsDetectionThresholdMet(l_0_0.ppid) then
  return mp.CLEAN
end
local l_0_1 = (mp.GetScannedPPID)()
if l_0_1 == "" or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (mp.GetProcessCommandLine)(l_0_1)
if l_0_2 == "" or l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = ""
l_0_2 = (string.lower)(l_0_2)
l_0_2 = (string.gsub)(l_0_2, "\'", "\"")
l_0_2 = (string.gsub)(l_0_2, "\"\"", "\"")
if (string.match)(l_0_2, "stop[%s]*\"") then
  l_0_3 = (string.match)(l_0_2, "stop[%s]*\"([^\"]+)\"[%s]*")
else
  l_0_3 = (string.match)(l_0_2, "stop[%s]*(%S+)[%s]*")
end
if l_0_3 == "" or l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = {}
l_0_4.dns = true
l_0_4.dhcpserver = true
l_0_4.adds = true
l_0_4.sppsvc = true
l_0_4.windefend = true
if l_0_4[l_0_3] then
  return mp.INFECTED
end
return mp.LOWFI

