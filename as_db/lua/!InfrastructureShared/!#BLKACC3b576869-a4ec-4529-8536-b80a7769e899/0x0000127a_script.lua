-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BLKACC3b576869-a4ec-4529-8536-b80a7769e899\0x0000127a_luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("3b576869-a4ec-4529-8536-b80a7769e899") then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if GetCtxOfficeProc() ~= "productivity" then
  if (MpCommon.GetPersistContextCountNoPath)("BlockOfficeCreateExecContentProcs") == 0 then
    return mp.CLEAN
  end
  local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
  if l_0_0 == "" or l_0_0 == nil then
    return mp.CLEAN
  end
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if l_0_1 == "" or l_0_1 == nil then
    return mp.CLEAN
  end
  local l_0_2 = l_0_1 .. "+" .. l_0_0
  if not (MpCommon.QueryPersistContextNoPath)("BlockOfficeCreateExecContentProcs", l_0_2) then
    return mp.CLEAN
  end
end
do
  if not peattributes.isexe and not peattributes.isdll and not peattributes.isdriver then
    return mp.CLEAN
  end
  if (mp.IsTrustedFile)(false) == true then
    return mp.CLEAN
  end
  local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  l_0_3 = (l_0_3 == nil and "" or l_0_3):lower()
  local l_0_4 = (MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  l_0_4 = (l_0_4 == nil and "" or l_0_4):lower()
  local l_0_5 = l_0_4 .. "\\" .. l_0_3
  local l_0_6 = (mp.ContextualExpandEnvironmentVariables)("%appdata%")
  l_0_6 = (l_0_6 == nil and "" or l_0_6):lower()
  local l_0_7 = (mp.ContextualExpandEnvironmentVariables)("%localappdata%")
  l_0_7 = (l_0_7 == nil and "" or l_0_7):lower()
  local l_0_8 = (mp.ContextualExpandEnvironmentVariables)("%temp%")
  l_0_8 = (l_0_8 == nil and "" or l_0_8):lower()
  local l_0_9 = (MpCommon.ExpandEnvironmentVariables)("%programfiles%")
  l_0_9 = (l_0_9 == nil and "" or l_0_9):lower()
  local l_0_10 = (MpCommon.ExpandEnvironmentVariables)("%programfiles(x86)%")
  l_0_10 = (l_0_10 == nil and "" or l_0_10):lower()
  local l_0_11 = (MpCommon.ExpandEnvironmentVariables)("%commonprogramfiles%")
  l_0_11 = (l_0_11 == nil and "" or l_0_11):lower()
  local l_0_12 = (MpCommon.ExpandEnvironmentVariables)("%commonprogramfiles(x86)%")
  l_0_12 = (l_0_12 == nil and "" or l_0_12):lower()
  local l_0_13 = (MpCommon.ExpandEnvironmentVariables)("%systemdrive%")
  l_0_13 = (l_0_13 == nil and "" or l_0_13):lower()
  local l_0_14 = (MpCommon.ExpandEnvironmentVariables)("%systemroot%")
  l_0_14 = (l_0_14 == nil and "" or l_0_14):lower()
  if l_0_4 == l_0_7 .. "low\\sogoupy" then
    return mp.CLEAN
  end
  if l_0_4 == l_0_6 .. "\\locallow\\sogoupy" then
    return mp.CLEAN
  end
  if l_0_4 == l_0_6 .. "\\onetastic" then
    return mp.CLEAN
  end
  if l_0_4 == l_0_8 .. "\\onenotesyncdata" then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_6 .. "\\local\\temp\\onenotesyncdata\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_7 .. "\\assembly\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_7 .. "\\microsoft\\windows\\inetcache\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if l_0_5:find(l_0_7 .. "\\microsoft\\onenote%d*\\%d+%.%d+\\cache\\.+%.%a*bin$") ~= nil then
    return mp.CLEAN
  end
  if l_0_5:find(l_0_7 .. "\\microsoft\\onenote%d*\\%d+%.%d+\\cache\\tmp\\.+%.%a*bin$") ~= nil then
    return mp.CLEAN
  end
  if l_0_5:find(l_0_7 .. "\\microsoft\\msoidentitycrl\\production\\[^\\]+%.dll$") ~= nil then
    return mp.CLEAN
  end
  if l_0_5:find(l_0_7 .. "\\microsoft\\uev\\.+%.pkgdat$") ~= nil then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_7 .. "\\microsoft\\appv\\client\\vfs\\[a-f0-9]+-[a-f0-9]+-[a-f0-9]+-[a-f0-9]+-[a-f0-9]+\\") ~= nil then
    return mp.CLEAN
  end
  if l_0_5:find(l_0_7 .. "\\microsoft\\onedrive\\%d+%.%d+%.%d+%.%d+\\.+%.dll.*$") ~= nil then
    return mp.CLEAN
  end
  if l_0_5:find(l_0_7 .. "\\microsoft\\windows\\temporary internet files\\content.ie5\\.+%.dll$") ~= nil then
    return mp.CLEAN
  end
  if l_0_5:find(l_0_7 .. "\\microsoft\\teams\\current\\.+%.dll$") ~= nil then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_7 .. "\\temp\\deployment\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_7 .. "\\temp\\onenotesyncdata\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_7 .. "\\mssolvehelper databroker\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_8 .. "\\deployment\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_8 .. "\\onenotesyncdata\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_8 .. "\\officemix.setup.", 1, true) ~= nil then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_9 .. "\\microsoft office\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_11 .. "\\microsoft shared\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if l_0_4 == l_0_9 .. "\\microsoft azure information protection\\" then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_10 .. "\\microsoft office\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_12 .. "\\microsoft shared\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if l_0_4 == l_0_10 .. "\\microsoft azure information protection\\" then
    return mp.CLEAN
  end
  if l_0_4 == l_0_13 .. "\\gendox\\teams\\common\\bin" then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_14 .. "\\assembly\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if (mp.get_mpattribute)("Lua:SignedThinkCellComponent") then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_7, 1, true) ~= nil and l_0_4:find("\\apps\\%d%.%d\\%w%w%w%w%w%w%w%w%.%w%w%w\\%w%w%w%w%w%w%w%w%.%w%w%w\\") ~= nil then
    return mp.CLEAN
  end
  if l_0_4:find(l_0_8, 1, true) ~= nil and l_0_3:match("^{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}$") then
    return mp.CLEAN
  end
  if peattributes.isdll and (mp.get_mpattribute)("SOAPSchema.A") then
    return mp.CLEAN
  end
  if (mp.IsPathExcludedForHipsRule)(l_0_5, "3b576869-a4ec-4529-8536-b80a7769e899") then
    return mp.CLEAN
  end
  ;
  (mp.set_mpattribute)("MpDisableCaching")
  return mp.INFECTED
end

