-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BLKACC3b576869-a4ec-4529-8536-b80a7769e899\0x000011f4_luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("3b576869-a4ec-4529-8536-b80a7769e899") then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = false
local l_0_1 = {}
l_0_1[".bat"] = true
l_0_1[".cmd"] = true
l_0_1[".hta"] = true
l_0_1[".jar"] = true
l_0_1[".js"] = true
l_0_1[".jse"] = true
l_0_1[".lnk"] = true
l_0_1[".pif"] = true
l_0_1[".ps1"] = true
l_0_1[".psc1"] = true
l_0_1[".settingcontent-ms"] = true
l_0_1[".appcontent-ms"] = true
l_0_1[".application"] = true
l_0_1[".scr"] = true
l_0_1[".sys"] = true
l_0_1[".vbe"] = true
l_0_1[".vbs"] = true
l_0_1[".wsc"] = true
l_0_1[".wsf"] = true
l_0_1[".wsh"] = true
l_0_1[".ocx"] = true
l_0_1[".com"] = true
l_0_1[".exe"] = true
l_0_1[".dll"] = true
l_0_1[".xll"] = true
local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
l_0_2 = (l_0_2 == nil and "" or l_0_2):lower()
if ((l_0_2:sub(-20)):match("(%.[%w%-]+)$") == nil and "") or l_0_1[(l_0_2:sub(-20)):match("(%.[%w%-]+)$")] == true then
  l_0_0 = true
else
  local l_0_4 = nil
  if not (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME) or (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME) == "" then
    return mp.CLEAN
  end
  local l_0_5 = nil
  local l_0_6 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  local l_0_7 = {["cmd.exe"] = true, ["powershell.exe"] = true}
  local l_0_8 = {["cscript.exe"] = true, ["wscript.exe"] = true}
  if l_0_7[l_0_6] == true or l_0_8[l_0_6] == true or ({["mshta.exe"] = true, ["rundll32.exe"] = true, ["regasm.exe"] = true, ["regsvc.exe"] = true, ["regsvr32.exe"] = true, ["msbuild.exe"] = true, ["certutil.exe"] = true, ["installutil.exe"] = true})[l_0_6] == true then
    l_0_0 = true
  end
end
do
  if l_0_0 == false then
    return mp.CLEAN
  end
  local l_0_10 = nil
  if (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)) == nil or (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)) == "" then
    return mp.CLEAN
  end
  if (MpCommon.QueryPersistContext)((string.lower)((MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))), "DroppedByOfficeProc") then
    (mp.ReportLowfi)((mp.getfilename)(), 3347840832)
  end
  return mp.CLEAN
end

