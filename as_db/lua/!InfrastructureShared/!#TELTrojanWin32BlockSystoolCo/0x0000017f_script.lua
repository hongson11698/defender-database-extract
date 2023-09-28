-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELTrojanWin32BlockSystoolCo\0x0000017f_luac 

-- params : ...
-- function num : 0
if not peattributes.isexe then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN and not (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
  return mp.CLEAN
end
if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
l_0_1 = (string.lower)((MpCommon.PathToWin32Path)(l_0_1))
if (string.find)(l_0_1, ":\\$winreagent\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_1, ":\\program files\\windowsapps\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_1, ":\\mount[^\\]*\\windows\\winsxs\\temp\\pendingrenames\\") ~= nil then
  return mp.CLEAN
end
if (string.sub)(l_0_1, 2, 12) == ":\\$windows." then
  return mp.CLEAN
end
if (string.find)(l_0_1, ":\\windows.old\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_1, ":\\program files\\git\\mingw64\\bin\\", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_2 = (MpCommon.ExpandEnvironmentVariables)("%systemroot%")
if l_0_2 == nil or l_0_2 == "" then
  return mp.CLEAN
end
l_0_2 = (string.lower)((MpCommon.PathToWin32Path)(l_0_2))
local l_0_3 = nil
l_0_3 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_3 == nil or l_0_3 == "" then
  return mp.CLEAN
end
local l_0_4 = (string.lower)((MpCommon.PathToWin32Path)(l_0_3))
if (string.find)(l_0_4, l_0_2, 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_4, ":\\programdata\\microsoft\\grouppolicy\\users\\[^\\]+\\datastore\\0\\sysvol\\fcc%.intfcc%.local\\policies\\[^\\]+\\user\\[^\\]+\\logon\\bginfo%.exe") ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_4, ":\\program files[^\\]*\\java\\jre[^\\]*\\bin\\java.?.?%.exe") ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_4, ":\\program files\\sharp\\file-copy\\robocopy.exe", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_5 = false
local l_0_6 = (MpCommon.GetOriginalFileName)(l_0_3)
do
  if l_0_6 ~= nil and l_0_6 ~= "" then
    local l_0_7 = nil
    l_0_7 = (string.match)(l_0_6, "%.([^%.]+)$")
    if l_0_7 == nil then
      l_0_6 = l_0_6 .. ".exe"
      l_0_7 = "exe"
    end
    if l_0_7 == "exe" then
      if (sysio.IsFileExists)(l_0_2 .. "\\system32\\" .. l_0_6) then
        l_0_5 = true
      end
      if not l_0_5 and (sysio.IsFileExists)(l_0_2 .. "\\syswow64\\" .. l_0_6) then
        l_0_5 = true
      end
    end
  end
  if not l_0_5 then
    local l_0_8 = (pe.get_versioninfo)()
    if l_0_8 == nil then
      return mp.CLEAN
    end
    if l_0_8.OriginalFilename == nil then
      return mp.CLEAN
    end
    local l_0_9 = (string.lower)(l_0_8.OriginalFilename)
    if (string.sub)(l_0_9, -4) ~= ".exe" then
      return mp.CLEAN
    end
    if (sysio.IsFileExists)(l_0_2 .. "\\system32\\" .. l_0_9) then
      l_0_5 = true
    end
    if not l_0_5 and (sysio.IsFileExists)(l_0_2 .. "\\syswow64\\" .. l_0_9) then
      l_0_5 = true
    end
  end
  do
    if l_0_5 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

