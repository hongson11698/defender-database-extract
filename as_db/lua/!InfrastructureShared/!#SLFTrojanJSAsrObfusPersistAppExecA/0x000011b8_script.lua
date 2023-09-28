-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFTrojanJSAsrObfusPersistAppExecA\0x000011b8_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if not l_0_0 then
  return mp.CLEAN
end
if l_0_0 == mp.SCANREASON_AMSI then
  if (mp.get_mpattribute)("SCPT:JS/AsrobfusShellExec.A") then
    local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_AMSI_APPNAME)
    if not l_0_1 then
      return mp.CLEAN
    end
    if l_0_1 == "JScript" or l_0_1 == "VBScript" then
      local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_AMSI_CONTENTNAME)
      if not l_0_2 then
        return mp.CLEAN
      end
      local l_0_3 = (string.lower)(l_0_2)
      if not l_0_3 then
        return mp.CLEAN
      end
      if (MpCommon.QueryPersistContext)(l_0_3, "AsrObfusWasScanned") and not (MpCommon.QueryPersistContext)(l_0_3, "AsrObfusPersist") and (sysio.IsFileExists)(l_0_3) then
        local l_0_4 = (sysio.GetFileSize)(l_0_3)
        if not l_0_4 or l_0_4 > 300000 then
          return mp.CLEAN
        end
        local l_0_5 = (string.lower)((sysio.ReadFile)(l_0_3, 0, l_0_4))
        if not l_0_5 then
          return mp.CLEAN
        end
        if not (string.find)(l_0_5, "shell.application", 1, true) and not (string.find)(l_0_5, ".shellexecute", 1, true) then
          (mp.ReportLowfi)(l_0_3, 2066493919)
          return mp.INFECTED
        end
      end
    end
  else
    do
      do
        local l_0_6 = (mp.getfilename)()
        if not l_0_6 then
          return mp.CLEAN
        end
        l_0_6 = (string.lower)(l_0_6)
        ;
        (MpCommon.AppendPersistContext)(l_0_6, "AsrObfusWasScanned", 0)
        if (mp.get_mpattribute)("SCPT:JS/AsrobfusShellExec.B") and (mp.get_mpattribute)("SCPT:JS/AsrobfusShellExec.C") then
          (MpCommon.AppendPersistContext)(l_0_6, "AsrObfusPersist", 0)
        end
        return mp.CLEAN
      end
    end
  end
end

