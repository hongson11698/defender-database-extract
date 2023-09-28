-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Sasquor\0x00001221_luac 

-- params : ...
-- function num : 0
local l_0_0 = 805306494
SuweezyReportExclusionLatents(l_0_0)
local l_0_1, l_0_2 = nil, nil
local l_0_3 = (MpDetection.GetCurrentThreat)()
for l_0_7,l_0_8 in pairs(l_0_3.Resources) do
  if l_0_8.Schema == "file" and (crypto.bitand)(l_0_8.Type, MpCommon.MPRESOURCE_TYPE_CONCRETE) == MpCommon.MPRESOURCE_TYPE_CONCRETE then
    local l_0_9, l_0_10, l_0_11, l_0_12 = Infrastructure_SplitThreatPath(l_0_8.Path)
    if l_0_12 == "dll" or l_0_12 == "exe" then
      Infrastructure_DetectionReportFolder(l_0_0, l_0_8.Path, true)
      if (string.sub)((string.lower)(l_0_8.Path), -18) == "qqbrowserframe.dll" then
        l_0_1 = l_0_8.Path
      end
      if (string.sub)((string.lower)(l_0_8.Path), -10) == "update.dll" then
        l_0_2 = l_0_8.Path
      end
    end
  end
end
do
  if l_0_1 ~= nil then
    local l_0_13, l_0_14, l_0_15, l_0_16 = Infrastructure_SplitThreatPath(l_0_1)
    if (sysio.IsFileExists)(l_0_13 .. "\\QQBrowser.exe") then
      (MpDetection.ReportResource)("file", l_0_13 .. "\\QQBrowser.exe", l_0_0, false)
    end
  end
  do
    if l_0_2 ~= nil then
      local l_0_17, l_0_18, l_0_19, l_0_20 = Infrastructure_SplitThreatPath(l_0_2)
      if (sysio.IsFileExists)(l_0_17 .. "\\BaofengUpdate_U.exe") then
        (MpDetection.ReportResource)("file", l_0_17 .. "\\BaofengUpdate_U.exe", l_0_0, false)
      end
    end
    local l_0_21 = (sysio.ExpandFilePath)("%LOCALAPPDATA%", true)
    if l_0_21 ~= nil then
      for l_0_25,l_0_26 in pairs(l_0_21) do
        local l_0_27 = l_0_26 .. "\\SNARER\\Snarer.dll"
        if (sysio.IsFileExists)(l_0_27) then
          Infrastructure_DetectionReportFolder(l_0_0, l_0_27, true)
        end
        l_0_27 = l_0_26 .. "\\NPASRE\\Snare.dll"
        if (sysio.IsFileExists)(l_0_27) then
          Infrastructure_DetectionReportFolder(l_0_0, l_0_27, true)
        end
      end
    end
    do
      Infrastructure_ReportRegistryKey(l_0_0, "HKLM\\SYSTEM\\CurrentControlSet\\Services\\SNARER")
      Infrastructure_ReportRegistryValue(l_0_0, "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\SvcHost", "SNARER")
      Infrastructure_ReportRegistryKey(l_0_0, "HKLM\\SYSTEM\\CurrentControlSet\\Services\\NPASRE")
      Infrastructure_ReportRegistryValue(l_0_0, "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\SvcHost", "NPASRE")
      local l_0_28 = (MpCommon.ExpandEnvironmentVariables)("%ProgramFiles%")
      if (sysio.IsFileExists)(l_0_28 .. "\\MIO\\MIO.exe") then
        Infrastructure_DetectionReportFolder(l_0_0, l_0_28 .. "\\MIO\\MIO.exe", true)
      end
      local l_0_29 = (MpCommon.ExpandEnvironmentVariables)("%ProgramFiles(x86)%")
      if (sysio.IsFileExists)(l_0_29 .. "\\MIO\\MIO.exe") then
        Infrastructure_DetectionReportFolder(l_0_0, l_0_29 .. "\\MIO\\MIO.exe", true)
      end
      Infrastructure_ReportImageFileDebugger(l_0_0, "GoogleUpdate.exe")
      Infrastructure_ReportImageFileDebugger(l_0_0, "GoogleUpdaterService.exe")
      Infrastructure_ReportSoftwareRegistryByKey(l_0_0, "WinArcher")
      Infrastructure_ReportSoftwareRegistryByKey(l_0_0, "ourluckysitesSoftware")
    end
  end
end

