-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d56_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if l_0_1 == "" or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = ""
if (string.sub)(l_0_1, -1) == "\"" then
  l_0_2 = (string.match)(l_0_1, " (\"[^\"]+\")[%s]*$")
else
  l_0_2 = (string.match)(l_0_1, " (%S+)[%s]*$")
end
if l_0_2 == "" or l_0_2 == nil then
  return mp.CLEAN
end
if not (MpCommon.QueryPersistContext)(l_0_2, "DroppedByBitsadmin") then
  (MpCommon.AppendPersistContext)(l_0_2, "DroppedByBitsadmin", 0)
end
return mp.INFECTED

