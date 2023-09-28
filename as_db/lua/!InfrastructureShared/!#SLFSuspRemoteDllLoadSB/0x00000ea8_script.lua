-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFSuspRemoteDllLoadSB\0x00000ea8_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_0 ~= "rundll32.exe" and l_0_0 ~= "regsvr32.exe " then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
if (MpCommon.QueryPersistContext)(l_0_1, "SuspExeFileDroppedBySystemProcess") then
  return mp.INFECTED
end
return mp.CLEAN

