-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#PsReverseShellB\0x00008046_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_AMSI then
    local l_0_1 = {}
    if (MpCommon.GetPersistContextCountNoPath)("psfrag") >= 2 then
      (mp.set_mpattribute)("PS_Revershell")
    else
      if (MpCommon.GetPersistContextCountNoPath)("psfrag") > 0 and not (MpCommon.QueryPersistContextNoPath)("psfrag", "p2") then
        (MpCommon.AppendPersistContextNoPath)("psfrag", "p2", 120)
      else
        if not (MpCommon.QueryPersistContextNoPath)("psfrag", "p2") then
          (table.insert)(l_0_1, "p2")
          ;
          (MpCommon.SetPersistContextNoPath)("psfrag", l_0_1, 120)
        end
      end
    end
  end
  return mp.CLEAN
end

