-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BLKACC3b576869-a4ec-4529-8536-b80a7769e899\0x000011d8_luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("3b576869-a4ec-4529-8536-b80a7769e899") then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if not l_0_0 or l_0_0 == "" then
  return mp.CLEAN
end
local l_0_1 = (string.lower)(l_0_0)
local l_0_2 = {}
l_0_2["explorer.exe"] = true
l_0_2["unzip.exe"] = true
l_0_2["rar.exe"] = true
l_0_2["winrar.exe"] = true
l_0_2["winzip.exe"] = true
l_0_2["winzip32.exe"] = true
l_0_2["winzip64.exe"] = true
l_0_2["7z.exe"] = true
l_0_2["7zfm.exe"] = true
l_0_2["7zg.exe"] = true
l_0_2["irsetup.exe"] = true
if l_0_2[l_0_1] ~= true then
  return mp.CLEAN
end
local l_0_3 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_3 == nil or l_0_3 == "" then
  return mp.CLEAN
end
l_0_3 = (string.lower)((MpCommon.PathToWin32Path)(l_0_3))
if not (MpCommon.QueryPersistContext)(l_0_3, "DroppedByOfficeProc") then
  return mp.CLEAN
end
local l_0_4 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
local l_0_5 = (mp.GetProcessCommandLine)(l_0_4)
if l_0_5 == "" or l_0_5 == nil then
  return mp.CLEAN
end
if (string.find)((string.lower)(l_0_5), l_0_3, 1, true) == nil then
  return mp.CLEAN
end
local l_0_6 = l_0_1 .. "+" .. l_0_4
if (MpCommon.GetPersistContextCountNoPath)("BlockOfficeCreateExecContentProcs") == 0 then
  local l_0_7 = {}
  ;
  (table.insert)(l_0_7, l_0_6)
  ;
  (MpCommon.SetPersistContextNoPath)("BlockOfficeCreateExecContentProcs", l_0_7, 0)
else
  do
    if not (MpCommon.QueryPersistContextNoPath)("BlockOfficeCreateExecContentProcs", l_0_6) then
      (MpCommon.AppendPersistContextNoPath)("BlockOfficeCreateExecContentProcs", l_0_6, 0)
    end
    return mp.CLEAN
  end
end

