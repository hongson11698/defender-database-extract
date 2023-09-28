-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Xider\0x00001238_luac 

-- params : ...
-- function num : 0
ReportCLSIDbyAppDir = function(l_1_0, l_1_1, l_1_2)
  -- function num : 0_0
  if l_1_0 ~= nil and l_1_1 ~= nil then
    local l_1_3 = Infrastructure_GetFilePathFromGUID(l_1_0)
    if l_1_3 ~= nil then
      local l_1_4, l_1_5, l_1_6, l_1_7 = Infrastructure_SplitThreatPath(l_1_3)
      if l_1_5 == l_1_1 and l_1_7 == "dll" then
        Infrastructure_DetectionReportBHOByCLSID(l_1_2, l_1_0)
        Infrastructure_ReportCLSID(l_1_2, l_1_0)
        Infrastructure_ReportIEExtensionsByClsid(l_1_2, l_1_0)
      end
    end
  end
end

local l_0_0 = (MpDetection.GetCurrentThreat)()
if l_0_0.Name == "BrowserModifier:Win32/Xider" then
  for l_0_4,l_0_5 in pairs(l_0_0.Resources) do
    if l_0_5.Schema == "file" and (crypto.bitand)(l_0_5.Type, MpCommon.MPRESOURCE_TYPE_CONCRETE) == MpCommon.MPRESOURCE_TYPE_CONCRETE then
      local l_0_6, l_0_7, l_0_8, l_0_9 = Infrastructure_SplitThreatPath(l_0_5.Path)
      if (l_0_6:find(":\\program files", 1, true) or l_0_6:find("\\appdata\\local\\", 1, true)) and l_0_9 == "exe" and (string.len)(l_0_7) > 3 and ((string.sub)(l_0_8, -12) == "-enabler.exe" or (string.sub)(l_0_8, -6) == "-2.exe" or (string.sub)(l_0_8, -9) == "utils.exe") then
        local l_0_10 = 536871282
        Infrastructure_DetectionReportFolder(l_0_10, l_0_6, true)
        Infrastructure_ScanTaskschedulerResources()
        local l_0_11 = l_0_7:gsub("-BrowserExtensionUninstall", "")
        local l_0_12 = Infrastructure_HKCUExpandSpecialPath("Local AppData")
        for l_0_16,l_0_17 in pairs(l_0_12) do
          local l_0_18 = l_0_17 .. "\\" .. l_0_11 .. "\\"
          if (sysio.IsFileExists)(l_0_18 .. "Chrome\\" .. l_0_11 .. ".crx") then
            Infrastructure_DetectionReportFolder(l_0_10, l_0_18, true)
          end
        end
        if Infrastructure_GetUninstallStrFromKey(l_0_11, "Publisher") == "215 Apps" then
          Infrastructure_DetectionReportUninstallRegKey(l_0_10, l_0_11)
        else
          local l_0_19 = Infrastructure_GetUninstallStrFromKey(l_0_11, "CrPublisherId")
          if l_0_19 ~= nil and (string.len)(l_0_19) >= 1 then
            Infrastructure_DetectionReportUninstallRegKey(l_0_10, l_0_11)
          end
        end
        do
          do
            ReportCLSIDbyAppDir(Infrastructure_IE_GetExtPolicyGUIDfromMatch("{11111111%-1111%-1111%-1111%-110%d%d%d%d%d%d%d%d%d}"), l_0_7, l_0_10)
            ReportCLSIDbyAppDir(Infrastructure_IE_GetExtPolicyGUIDfromMatch("{22222222%-2222%-2222%-2222%-220%d%d%d%d%d%d%d%d%d}"), l_0_7, l_0_10)
            ReportCLSIDbyAppDir(Infrastructure_IE_GetExtPolicyGUIDfromMatch("{33333333%-3333%-3333%-3333%-330%d%d%d%d%d%d%d%d%d}"), l_0_7, l_0_10)
            ReportCLSIDbyAppDir(Infrastructure_IE_GetExtPolicyGUIDfromMatch("{44444444%-4444%-4444%-4444%-440%d%d%d%d%d%d%d%d%d}"), l_0_7, l_0_10)
            -- DECOMPILER ERROR at PC167: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC167: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC167: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC167: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC167: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
end

