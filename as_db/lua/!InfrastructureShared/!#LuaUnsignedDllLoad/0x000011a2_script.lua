-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaUnsignedDllLoad\0x000011a2_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_0 == nil then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
if l_0_0 ~= "rundll32.exe" and l_0_0 ~= "regsvr32.exe " then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
l_0_1 = (MpCommon.PathToWin32Path)(l_0_1)
if l_0_1 == nil then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
if (string.find)(l_0_1, ":\\windows\\system32\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_1, ":\\windows\\syswow64\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_1, ":\\windows\\winsxs", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_1, ":\\windows\\servicing\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_1, ":\\program files\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_1, "\\program files (x86)\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (mp.IsTrustedFile)(false) == true then
  return mp.CLEAN
end
if (mp.IsKnownFriendlyFile)(l_0_1, true, false) == true then
  return mp.CLEAN
end
local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
if l_0_2 then
  (MpCommon.BmTriggerSigPropagate)(l_0_2, "UnsignedDllLoad", l_0_1)
  ;
  (mp.set_mpattribute)("MpDisableCaching")
  return mp.INFECTED
end
return mp.CLEAN

