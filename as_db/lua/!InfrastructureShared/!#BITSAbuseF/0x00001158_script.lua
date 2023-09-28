-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BITSAbuseF\0x00001158_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_0 == nil or (string.lower)(l_0_0) ~= "svchost.exe" then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
local l_0_2 = (mp.GetProcessCommandLine)(l_0_1)
if l_0_2 == nil or (string.len)(l_0_2) == 0 then
  return mp.CLEAN
end
local l_0_3 = (string.match)(l_0_2, "-s%s+([^%s]+)")
if l_0_3 == nil then
  return mp.CLEAN
end
if (string.lower)(l_0_3) ~= "bits" then
  return mp.CLEAN
end
local l_0_4 = (mp.getfilename)()
if l_0_4 == nil then
  return mp.CLEAN
end
l_0_4 = (string.lower)(l_0_4)
if (string.find)(l_0_4, "\\notifications\\wpnidm\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_4, "\\microsoft\\systemcertificates\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_4, "\\microsoft\\outlook\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_4, "\\microsoft\\olk\\", 1, true) ~= nil then
  return mp.CLEAN
end
if not (MpCommon.QueryPersistContext)(l_0_4, "DroppedByBitsadmin") and not (MpCommon.QueryPersistContext)(l_0_4, "DroppedByBITS") then
  (MpCommon.AppendPersistContext)(l_0_4, "DroppedByBITS", 0)
end
return mp.CLEAN

