-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#PsAmsiByPass1\0x00007c64_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
if l_0_0 ~= nil then
  AddTacticForPid(l_0_0, "PS_LoadLib", 3600)
  local l_0_1 = GetTacticsTableForPid(l_0_0)
  if l_0_1 ~= nil and l_0_1.PS_LoadLib and l_0_1.PS_GetProc and l_0_1.PS_VirtualProt then
    (mp.set_mpattribute)("PS_AmsiBypass3")
  end
end
do
  return mp.CLEAN
end

