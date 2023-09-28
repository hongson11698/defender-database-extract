-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanWin32PFAppsSusShellDropB\0x00000180_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
if not l_0_0 then
  return mp.CLEAN
end
do
  if not (MpCommon.GetProcessAttributeValue)(l_0_0, "PFApp_SusDrop") then
    local l_0_1, l_0_2 = (MpCommon.GetProcessAttributeValue)(l_0_0, "inherit:PFApp_SusDrop")
  end
  -- DECOMPILER ERROR at PC23: Confused about usage of register: R1 in 'UnsetPending'

  if not l_0_1 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC31: Confused about usage of register: R1 in 'UnsetPending'

  ;
  (mp.set_mpattribute)("MpInternal_researchdata=Evidence=" .. l_0_1)
  return mp.INFECTED
end

