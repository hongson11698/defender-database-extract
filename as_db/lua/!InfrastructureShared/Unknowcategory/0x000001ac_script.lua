-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000001ac_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("MpIsVBScriptAMSIScan") and not (mp.get_mpattribute)("MpIsJScriptAMSIScan") and not (mp.get_mpattribute)("MpIsPowerShellAMSIScan") then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
;
(table.insert)(l_0_0, l_0_1)
;
(MpCommon.SetPersistContextNoPath)("amsidetct", l_0_0, 120)
return mp.CLEAN

