-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELTrojanJSAsrObfusPersist\0x00000397_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_AMSI then
  local l_0_1 = (mp.enum_mpattributesubstring)("SCPT:JS/AsrobfusAtt")
  if #l_0_1 >= 1 then
    local l_0_2, l_0_3 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_APPNAME)
    if l_0_2 and l_0_3 == "JScript" then
      local l_0_4, l_0_5 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
      if l_0_4 and l_0_5 ~= nil then
        local l_0_6 = (string.lower)(l_0_5)
        if (MpCommon.QueryPersistContext)(l_0_6, "AsrObfusWasScanned") and not (MpCommon.QueryPersistContext)(l_0_6, "AsrObfusPersist") then
          return mp.INFECTED
        end
      end
    end
  end
else
  do
    local l_0_7 = (string.lower)((mp.getfilename)())
    ;
    (MpCommon.AppendPersistContext)(l_0_7, "AsrObfusWasScanned", 0)
    do
      local l_0_8 = (mp.enum_mpattributesubstring)("SCPT:JS/AsrobfusAtt")
      if #l_0_8 >= 1 then
        (MpCommon.AppendPersistContext)(l_0_7, "AsrObfusPersist", 0)
      end
      return mp.CLEAN
    end
  end
end

