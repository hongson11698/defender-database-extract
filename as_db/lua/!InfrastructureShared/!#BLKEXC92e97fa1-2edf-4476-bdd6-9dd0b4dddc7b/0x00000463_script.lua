-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BLKEXC92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b\0x00000463_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_INMEMORY then
  return mp.CLEAN
end
if not (mp.IsHipsRuleEnabled)("92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b") then
  return mp.CLEAN
end
local l_0_0 = GetCtxOfficeProc()
if l_0_0 ~= "productivity" and l_0_0 ~= "productivity2" then
  return mp.CLEAN
end
local l_0_1 = nil
l_0_1 = GetNonVfoScannedFilePathIfExistOnMachine()
if l_0_1 ~= nil and (mp.IsPathExcludedForHipsRule)(l_0_1, "92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b") then
  return mp.CLEAN
end
local l_0_2 = nil
l_0_2 = GetInvolvedFileInCmdLnIfExistOnMachine()
if l_0_2 ~= nil and (mp.IsPathExcludedForHipsRule)(l_0_2, "92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b") then
  return mp.CLEAN
end
return mp.INFECTED

