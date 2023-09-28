-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaMalPsSmsScanA\0x00001090_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_AMSI then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
if l_0_0 ~= nil then
  if (mp.get_mpattribute)("SCRIPT:PS.Memset") and (mp.get_mpattribute)("SCRIPT:PS.Gt0x1000") then
    if (mp.get_mpattribute)("SCRIPT:PS.AddType") and (mp.get_mpattribute)("SCRIPT:PS.Calloc") and (mp.get_mpattribute)("SCRIPT:PS.CreateThread") then
      (mp.set_mpattribute)("MpDisableCaching")
      local l_0_1 = {}
      ;
      (table.insert)(l_0_1, l_0_0)
      ;
      (MpCommon.SetPersistContextNoPath)("Lua:MalPsSmsScanAmsi", l_0_1, 0)
    end
    do
      ;
      (MpCommon.RequestSmsOnProcess)(l_0_0, MpCommon.SMS_SCAN_HIGH)
      ;
      (MpCommon.RequestSmsOnProcess)(l_0_0, MpCommon.SMS_SCAN_MED)
      return mp.INFECTED
    end
  end
end

