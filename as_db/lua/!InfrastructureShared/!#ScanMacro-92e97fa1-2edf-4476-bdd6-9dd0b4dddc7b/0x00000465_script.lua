-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ScanMacro-92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b\0x00000465_luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b") then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE and l_0_0 ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
if (string.len)(l_0_1) < 20 then
  return mp.CLEAN
end
if (string.sub)(l_0_1, -14) ~= "vbaproject.bin" then
  return mp.CLEAN
end
local l_0_2 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_CNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_2 == nil or l_0_2 == "" then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("SCRIPT:LoadWin32importsfromMacro") and not (mp.get_mpattribute)("MHSTR:LoadWin32importsfromMacro") and not (MpCommon.QueryPersistContext)(l_0_2, "enghipscpy:MHSTRLoadWin32importsfromMacroInside") then
  return mp.CLEAN
end
local l_0_3 = GetCtxOfficeProc()
if l_0_3 ~= "productivity" and l_0_3 ~= "productivity2" then
  return mp.CLEAN
end
if (string.find)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)), ">%[msilres", 1, true) then
  (mp.set_mpattribute)("LUA:InsideMSILRES")
  return mp.CLEAN
end
local l_0_4 = false
l_0_2 = (MpCommon.PathToWin32Path)(l_0_2)
if l_0_2 ~= nil and l_0_2 ~= "" then
  l_0_2 = (string.lower)(l_0_2)
  if (sysio.IsFileExists)(l_0_2) then
    l_0_4 = true
  end
end
if l_0_4 then
  if (string.find)(l_0_2, "\\program files\\microsoft office\\", 1, true) then
    return mp.CLEAN
  end
  if (string.find)(l_0_2, "\\program files (x86)\\microsoft office\\", 1, true) then
    return mp.CLEAN
  end
  if (string.find)(l_0_2, "\\program files\\windowsapps\\microsoft.office.desktop.excel", 1, true) then
    return mp.CLEAN
  end
  if (string.find)(l_0_2, "\\program files (x86)\\windowsapps\\microsoft.office.desktop.excel", 1, true) then
    return mp.CLEAN
  end
  if (mp.IsPathExcludedForHipsRule)(l_0_2, "92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b") then
    return mp.CLEAN
  end
end
local l_0_5 = nil
l_0_5 = GetInvolvedFileInCmdLnIfExistOnMachine()
if l_0_5 ~= nil and (mp.IsPathExcludedForHipsRule)(l_0_5, "92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b") then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("MpDisableCaching")
;
(mp.SetHipsRule)("92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b")
return mp.BLOCKACCESS

