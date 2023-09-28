-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BLKACC3b576869-a4ec-4529-8536-b80a7769e899\0x00000448_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_AMSI then
  return mp.CLEAN
end
if not (mp.IsHipsRuleEnabled)("3b576869-a4ec-4529-8536-b80a7769e899") then
  return mp.CLEAN
end
local l_0_0 = false
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_AMSI_CONTENTNAME)
if l_0_1 ~= nil and l_0_1 ~= "" then
  l_0_1 = (string.lower)((MpCommon.PathToWin32Path)(l_0_1))
  if l_0_1 ~= nil and l_0_1 ~= "" and (sysio.IsFileExists)(l_0_1) then
    l_0_0 = true
  end
end
if l_0_0 == false then
  l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_1 ~= nil and l_0_1 ~= "" then
    l_0_1 = (string.lower)((MpCommon.PathToWin32Path)(l_0_1))
    if l_0_1 ~= nil and l_0_1 ~= "" and (sysio.IsFileExists)(l_0_1) then
      l_0_0 = true
    end
  end
end
if l_0_0 and (mp.IsPathExcludedForHipsRule)(l_0_1, "3b576869-a4ec-4529-8536-b80a7769e899") then
  return mp.CLEAN
end
return mp.INFECTED

