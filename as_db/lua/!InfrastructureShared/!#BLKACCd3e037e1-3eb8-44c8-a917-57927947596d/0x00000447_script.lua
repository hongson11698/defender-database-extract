-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BLKACCd3e037e1-3eb8-44c8-a917-57927947596d\0x00000447_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_AMSI then
  return mp.CLEAN
end
if not (mp.IsHipsRuleEnabled)("d3e037e1-3eb8-44c8-a917-57927947596d") then
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
if l_0_0 and (mp.IsPathExcludedForHipsRule)(l_0_1, "d3e037e1-3eb8-44c8-a917-57927947596d") then
  return mp.CLEAN
end
return mp.INFECTED
