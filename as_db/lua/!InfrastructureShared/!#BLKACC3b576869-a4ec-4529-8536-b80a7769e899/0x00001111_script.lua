-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BLKACC3b576869-a4ec-4529-8536-b80a7769e899\0x00001111_luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("3b576869-a4ec-4529-8536-b80a7769e899") then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
if not peattributes.isexe and not peattributes.isdll and not peattributes.isdriver then
  return mp.CLEAN
end
if not (MpCommon.QueryPersistContext)((mp.getfilename)(), "enghipscpy:blockaccess:3b576869-a4ec-4529-8536-b80a7769e899") then
  return mp.CLEAN
end
if (mp.IsTrustedFile)(false) == true then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 ~= nil and l_0_0 ~= "" then
  l_0_0 = (string.lower)((MpCommon.PathToWin32Path)(l_0_0))
  if (mp.IsPathExcludedForHipsRule)(l_0_0, "3b576869-a4ec-4529-8536-b80a7769e899") then
    return mp.CLEAN
  end
end
;
(mp.set_mpattribute)("MpDisableCaching")
return mp.INFECTED

