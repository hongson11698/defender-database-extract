-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!RezzarB\ObMpAttributes\0x000000b5_luac 

-- params : ...
-- function num : 0
if peattributes.isdll or peattributes.isdriver or peattributes.isdamaged then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
if not (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_0 ~= "razerinstaller.exe" then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
local l_0_2 = (string.lower)((mp.GetProcessCommandLine)(l_0_1))
if l_0_2 == nil or l_0_2 == "" then
  return mp.CLEAN
end
if (string.find)(l_0_2, "/showdevice", 1, true) == nil then
  return mp.CLEAN
end
local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
if l_0_3 == "razerinstaller.exe" then
  return mp.CLEAN
end
if l_0_3 == "werfault.exe" then
  return mp.CLEAN
end
if l_0_3 == "explorer.exe" then
  return mp.CLEAN
end
if l_0_3 == "cmd.exe" then
  return mp.CLEAN
end
local l_0_4 = (string.lower)((MpCommon.PathToWin32Path)((mp.getfilename)()))
if l_0_4 == nil or l_0_4 == "" then
  return mp.CLEAN
end
local l_0_5 = (string.lower)((MpCommon.ExpandEnvironmentVariables)("%systemroot%"))
if l_0_5 == nil or l_0_5 == "" then
  return mp.CLEAN
end
if (string.find)(l_0_4, l_0_5 + "\\installer\\razer\\installer\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_4, l_0_5 + "\\installer\\razersynapse\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_4, l_0_5 + "\\installer\\razer central\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_4, l_0_5, 1, true) ~= nil then
  return mp.INFECTED
end
local l_0_6 = (string.lower)((MpCommon.ExpandEnvironmentVariables)("%programfiles%"))
if l_0_6 == nil or l_0_6 == "" then
  return mp.CLEAN
end
local l_0_7 = (string.lower)((MpCommon.ExpandEnvironmentVariables)("%programfiles(x86)%"))
if l_0_7 == nil or l_0_7 == "" then
  return mp.CLEAN
end
if (string.find)(l_0_4, l_0_6 + "\\razer\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_4, l_0_7 + "\\razer\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_4, l_0_6, 1, true) ~= nil then
  return mp.INFECTED
end
if (string.find)(l_0_4, l_0_7, 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

