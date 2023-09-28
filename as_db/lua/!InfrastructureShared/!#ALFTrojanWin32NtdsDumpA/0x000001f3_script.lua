-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanWin32NtdsDumpA\0x000001f3_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
local l_0_1 = (string.lower)((mp.GetProcessCommandLine)(l_0_0))
if not l_0_1 then
  return mp.CLEAN
end
if (string.find)(l_0_1, "dacpac.candence.ps1") then
  return mp.CLEAN
end
return mp.INFECTED

