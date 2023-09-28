-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008206_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.GetImagePathFromPid)(l_0_0)
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (MpCommon.PathToWin32Path)(l_0_1)
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = (MpCommon.GetOriginalFileName)(l_0_2)
if l_0_3 == nil then
  return mp.CLEAN
end
if l_0_3 == "powershell.exe" and not (string.find)((string.lower)(l_0_2), "powershell.exe", 1, true) then
  local l_0_4 = (mp.GetProcessCommandLine)(l_0_0)
  if l_0_4 == nil then
    return mp.CLEAN
  end
  local l_0_5 = (string.match)(l_0_4, " -[eE][nN][cC] ([a-zA-Z0-9%+/]+=-)")
  if l_0_5 == nil then
    return mp.CLEAN
  end
  if (string.len)(l_0_5) >= 512 then
    l_0_5 = (string.sub)(l_0_5, 1, 512)
  else
    l_0_5 = (string.sub)(l_0_5, 1, 256)
  end
  local l_0_6 = (MpCommon.Base64Decode)(l_0_5)
  if l_0_6 == nil then
    return mp.CLEAN
  end
  l_0_6 = (string.gsub)(l_0_6, "%z", "")
  l_0_6 = (string.lower)((string.gsub)(l_0_6, " ", ""))
  if (string.find)(l_0_6, "start-bitstransfer", 1, true) or (string.find)(l_0_6, ").downloadfile(", 1, true) or (string.find)(l_0_6, "invoke-webrequest", 1, true) or (string.find)(l_0_6, "-threatiddefaultaction_actions", 1, true) or (string.find)(l_0_6, "-exclusionpath", 1, true) or (string.find)(l_0_6, "-exclusionprocess", 1, true) or (string.find)(l_0_6, "::getcurrentprocess().mainmodule", 1, true) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

