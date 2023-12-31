-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000012a0_luac 

-- params : ...
-- function num : 0
Infrastructure_GetMappedDriveVolumes = function()
  -- function num : 0_0
  local l_1_0 = {}
  local l_1_1 = (sysio.GetLogicalDrivesMask)()
  local l_1_2 = {}
  -- DECOMPILER ERROR at PC31: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC32: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC33: Overwrote pending register: R4 in 'AssignReg'

  for l_1_6,l_1_7 in ("A:")("B:") do
    -- DECOMPILER ERROR at PC36: Overwrote pending register: R8 in 'AssignReg'

    -- DECOMPILER ERROR at PC38: Overwrote pending register: R9 in 'AssignReg'

    -- DECOMPILER ERROR at PC40: Overwrote pending register: R10 in 'AssignReg'

    -- DECOMPILER ERROR at PC41: Overwrote pending register: R11 in 'AssignReg'

    if (("F:").bitand)((("G:").shl32)("H:", "I:"), l_1_1) ~= 0 then
      local l_1_8 = (sysio.QuerySymbolicLinkObject)("\\??\\globalroot\\GLOBAL??\\" .. l_1_7)
    end
  end
  if l_1_8 then
    do
      do return l_1_0 end
      -- WARNING: undefined locals caused missing assignments!
    end
  end
end

Infrastructure_GetWindowsPathSlow = function()
  -- function num : 0_1
  local l_2_0 = (sysio.QuerySymbolicLinkObject)("\\??\\globalroot\\device\\BootPartition")
  local l_2_1 = Infrastructure_GetMappedDriveVolumes()
  for l_2_5,l_2_6 in pairs(l_2_1) do
    local l_2_7 = l_2_5 .. "\\Windows"
    if l_2_6 == l_2_0 and (sysio.IsFolderExists)(l_2_7) then
      return l_2_7
    end
  end
end

Infrastructure_CheckProductImageExecEntriesAndRemove = function()
  -- function num : 0_2
  local l_3_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\mpcmdrun.exe")
  if l_3_0 then
    (sysio.DeleteRegValue)(l_3_0, "Debugger")
  end
  l_3_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\msseces.exe")
  if l_3_0 then
    (sysio.DeleteRegValue)(l_3_0, "Debugger")
  end
  l_3_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\msmpeng.exe")
  if l_3_0 then
    (sysio.DeleteRegValue)(l_3_0, "Debugger")
  end
  l_3_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\msascui.exe")
  if l_3_0 then
    (sysio.DeleteRegValue)(l_3_0, "Debugger")
  end
end

Infrastructure_ScanSrpKeyPath_MSAV = function(l_4_0)
  -- function num : 0_3
  local l_4_1 = (sysio.RegOpenKey)(l_4_0)
  if l_4_1 then
    local l_4_2 = (sysio.RegEnumKeys)(l_4_1)
    if l_4_2 then
      for l_4_6,l_4_7 in pairs(l_4_2) do
        local l_4_8 = (sysio.RegOpenKey)(l_4_0 .. "\\" .. l_4_7)
        if l_4_8 then
          local l_4_9 = (sysio.GetRegValueAsString)(l_4_8, "ItemData")
          if l_4_9 and ((string.find)((string.lower)(l_4_9), "microsoft security", 1, true) or (string.find)((string.lower)(l_4_9), "defender", 1, true)) then
            (sysio.DeleteRegKey)(l_4_8, nil)
          end
        end
      end
    end
  end
end

Infrastructure_CheckProductSRPEntriesAndRemove = function()
  -- function num : 0_4
  Infrastructure_ScanSrpKeyPath_MSAV("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows\\safer\\codeidentifiers\\0\\Paths")
  SetLuaInstrLimit((crypto.shl64)(1, 24))
  local l_5_0 = "HKCU\\SOFTWARE\\Policies\\Microsoft\\Windows\\safer\\codeidentifiers\\0\\Paths"
  local l_5_1 = (sysio.RegExpandUserKey)(l_5_0)
  local l_5_2 = 0
  for l_5_6,l_5_7 in pairs(l_5_1) do
    Infrastructure_ScanSrpKeyPath_MSAV(l_5_7)
    l_5_2 = l_5_2 + 1
    if l_5_2 == 8 then
      break
    end
  end
  do
    return 
  end
end

Infrastructure_RestoreIEProxyToAutoDetect = function()
  -- function num : 0_5
  local l_6_0 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings")
  if l_6_0 then
    for l_6_4,l_6_5 in pairs(l_6_0) do
      local l_6_6 = (sysio.RegOpenKey)(l_6_5)
      if l_6_6 ~= nil then
        local l_6_7 = (sysio.GetRegValueAsString)(l_6_6, "ProxyServer")
        if l_6_7 ~= nil and (string.find)((string.lower)(l_6_7), "127.0.0.1", 1, true) ~= nil then
          (sysio.DeleteRegValue)(l_6_6, "ProxyServer")
          l_6_7 = (sysio.GetRegValueAsString)(l_6_6, "ProxyEnable")
          if l_6_7 ~= nil then
            (sysio.SetRegValueAsDword)(l_6_6, "ProxyEnable", 0)
          end
          l_6_7 = (sysio.GetRegValueAsString)(l_6_6, "ProxyOverride")
          if l_6_7 ~= nil then
            (sysio.SetRegValueAsString)(l_6_6, "ProxyOverride", "")
          end
        end
      end
    end
  end
end

Infrastructure_EnableIEProxySettings = function()
  -- function num : 0_6
  local l_7_0 = (sysio.RegOpenKey)("HKCU\\Software\\Policies\\Microsoft\\Internet Explorer\\Control Panel")
  if l_7_0 ~= nil then
    local l_7_1 = (sysio.GetRegValueAsDword)(l_7_0, "Proxy")
    if l_7_1 ~= nil then
      (sysio.SetRegValueAsDword)(l_7_0, "Proxy", 0)
    end
  end
end

LowerSet = function(l_8_0)
  -- function num : 0_7
  local l_8_1 = {}
  for l_8_5,l_8_6 in ipairs(l_8_0) do
    l_8_6 = (string.lower)(l_8_6)
    l_8_1[l_8_6] = true
  end
  return l_8_1
end

Infrastructure_IE_DisableExtensions = function(l_9_0)
  -- function num : 0_8
  local l_9_1 = LowerSet(l_9_0)
  Infrastructure_IE_RemoveApprovalCLSID(l_9_1, "HKCU\\SOFTWARE\\MICROSOFT\\INTERNET EXPLORER\\APPROVED EXTENSIONS")
  Infrastructure_IE_RemoveApprovalCLSID(l_9_1, "HKLM\\SOFTWARE\\MICROSOFT\\INTERNET EXPLORER\\APPROVED EXTENSIONS")
  Infrastructure_IE_RemovePolicyCLSID(l_9_1, "HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Ext\\CLSID")
  Infrastructure_IE_RemovePolicyCLSID(l_9_1, "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Ext\\CLSID")
  Infrastructure_IE_RemoveApprovalCLSID(l_9_1, "HKCU\\SOFTWARE\\Microsoft\\Internet Explorer\\ApprovedExtensionsMigration")
  Infrastructure_IE_RemoveApprovalCLSID(l_9_1, "HKLM\\SOFTWARE\\Microsoft\\Internet Explorer\\ApprovedExtensionsMigration")
  Infrastructure_IE_RemovePreApprovalCLSID(l_9_1, "HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Ext\\PreApproved")
  Infrastructure_IE_RemovePreApprovalCLSID(l_9_1, "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Ext\\PreApproved")
end

Infrastructure_IE_DisableExtensionsByMatch = function(l_10_0)
  -- function num : 0_9
  Infrastructure_IE_RemoveApprovalMatchCLSID(l_10_0, "HKLM\\SOFTWARE\\MICROSOFT\\INTERNET EXPLORER\\APPROVED EXTENSIONS")
  local l_10_1 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\MICROSOFT\\INTERNET EXPLORER\\APPROVED EXTENSIONS")
  if l_10_1 then
    for l_10_5,l_10_6 in pairs(l_10_1) do
      Infrastructure_IE_RemoveApprovalMatchCLSID(l_10_0, l_10_6)
    end
  end
  do
    Infrastructure_IE_RemovePolicyMatchCLSID(l_10_0, "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Ext\\CLSID")
    local l_10_7 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Ext\\CLSID")
    if l_10_7 then
      for l_10_11,l_10_12 in pairs(l_10_7) do
        Infrastructure_IE_RemovePolicyMatchCLSID(l_10_0, l_10_12)
      end
    end
    do
      Infrastructure_IE_RemoveApprovalMatchCLSID(l_10_0, "HKLM\\SOFTWARE\\Microsoft\\Internet Explorer\\ApprovedExtensionsMigration")
      local l_10_13 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Microsoft\\Internet Explorer\\ApprovedExtensionsMigration")
      if l_10_13 then
        for l_10_17,l_10_18 in pairs(l_10_13) do
          Infrastructure_IE_RemoveApprovalMatchCLSID(l_10_0, l_10_18)
        end
      end
      do
        Infrastructure_IE_RemovePreApprovalMatchCLSID(l_10_0, "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Ext\\PreApproved")
        local l_10_19 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Ext\\PreApproved")
        if l_10_19 then
          for l_10_23,l_10_24 in pairs(l_10_19) do
            Infrastructure_IE_RemovePreApprovalMatchCLSID(l_10_0, l_10_24)
          end
        end
      end
    end
  end
end

Infrastructure_DisableIEIgnoreApproval = function()
  -- function num : 0_10
  Infrastructure_DisableIEIgnoreApprovalKey("HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Ext")
  Infrastructure_DisableIEIgnoreApprovalKey("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Ext")
end

Infrastructure_DisableIEIgnoreApprovalKey = function(l_12_0)
  -- function num : 0_11
  local l_12_1 = (sysio.RegOpenKey)(l_12_0)
  if l_12_1 ~= nil then
    local l_12_2 = (sysio.GetRegValueAsDword)(l_12_1, "IgnoreFrameApprovalCheck")
    if l_12_2 ~= nil and l_12_2 == 1 then
      (sysio.SetRegValueAsDword)(l_12_1, "IgnoreFrameApprovalCheck", 0)
    end
  end
end

Infrastructure_IE_RemoveApprovalCLSID = function(l_13_0, l_13_1)
  -- function num : 0_12
  local l_13_2 = (sysio.RegOpenKey)(l_13_1)
  if l_13_2 ~= nil then
    local l_13_3 = (sysio.RegEnumValues)(l_13_2)
    if l_13_3 then
      for l_13_7,l_13_8 in pairs(l_13_3) do
        if l_13_0[(string.lower)(l_13_8)] ~= nil then
          (sysio.DeleteRegValue)(l_13_2, l_13_8)
        end
      end
    end
  end
end

Infrastructure_IE_RemoveApprovalMatchCLSID = function(l_14_0, l_14_1)
  -- function num : 0_13
  local l_14_2 = (sysio.RegOpenKey)(l_14_1)
  if l_14_2 ~= nil then
    local l_14_3 = (sysio.RegEnumValues)(l_14_2)
    if l_14_3 then
      for l_14_7,l_14_8 in pairs(l_14_3) do
        if (string.match)(l_14_8, l_14_0) then
          (sysio.DeleteRegValue)(l_14_2, l_14_8)
        end
      end
    end
  end
end

Infrastructure_IE_RemovePreApprovalCLSID = function(l_15_0, l_15_1)
  -- function num : 0_14
  local l_15_2 = (sysio.RegOpenKey)(l_15_1)
  if l_15_2 ~= nil then
    local l_15_3 = (sysio.RegEnumKeys)(l_15_2)
    if l_15_3 then
      for l_15_7,l_15_8 in pairs(l_15_3) do
        if l_15_0[(string.lower)(l_15_8)] ~= nil then
          (sysio.DeleteRegKey)(l_15_2, l_15_8)
        end
      end
    end
  end
end

Infrastructure_IE_RemovePreApprovalMatchCLSID = function(l_16_0, l_16_1)
  -- function num : 0_15
  local l_16_2 = (sysio.RegOpenKey)(l_16_1)
  if l_16_2 ~= nil then
    local l_16_3 = (sysio.RegEnumKeys)(l_16_2)
    if l_16_3 then
      for l_16_7,l_16_8 in pairs(l_16_3) do
        if (string.match)(l_16_8, l_16_0) ~= nil then
          (sysio.DeleteRegKey)(l_16_2, l_16_8)
        end
      end
    end
  end
end

Infrastructure_IE_RemovePolicyMatchCLSID = function(l_17_0, l_17_1)
  -- function num : 0_16
  local l_17_2 = (sysio.RegOpenKey)(l_17_1)
  if l_17_2 ~= nil then
    local l_17_3 = (sysio.RegEnumValues)(l_17_2)
    if l_17_3 then
      for l_17_7,l_17_8 in pairs(l_17_3) do
        if (string.match)(l_17_8, l_17_0) then
          (sysio.DeleteRegValue)(l_17_2, l_17_8)
        end
      end
    end
  end
end

Infrastructure_IE_RemovePolicyCLSID = function(l_18_0, l_18_1)
  -- function num : 0_17
  local l_18_2 = (sysio.RegOpenKey)(l_18_1)
  if l_18_2 ~= nil then
    local l_18_3 = (sysio.RegEnumValues)(l_18_2)
    if l_18_3 then
      for l_18_7,l_18_8 in pairs(l_18_3) do
        if l_18_0[(string.lower)(l_18_8)] ~= nil then
          (sysio.DeleteRegValue)(l_18_2, l_18_8)
        end
      end
    end
  end
end

Infrastructure_RepairServiceAtPath = function(l_19_0, l_19_1, l_19_2)
  -- function num : 0_18
  if not l_19_2 then
    l_19_2 = l_19_0
  end
  local l_19_3 = false
  local l_19_4 = "HKLM\\SYSTEM\\" .. l_19_1 .. "\\services\\" .. l_19_0
  local l_19_5 = (sysio.RegOpenKey)(l_19_4)
  if l_19_5 and ((sysio.GetRegValueAsDword)(l_19_5, "Start") == 4 or (sysio.GetRegValueAsString)(l_19_5, "DeleteFlag")) then
    l_19_3 = true
  end
  l_19_3 = true
  if l_19_3 then
    (Remediation.DefaultSpecialRegistry)("HKLM\\SYSTEM\\CurrentControlSet\\services\\" .. l_19_2, l_19_4)
  end
  if l_19_3 and (sysio.RegOpenKey)(l_19_4) then
    return true
  else
    return false
  end
end

Infrastructure_CheckMSEpresence = function()
  -- function num : 0_19
  if not (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Microsoft Antimalware") then
    return false
  end
  return true
end

Infrastructure_CheckDefenderpresence = function()
  -- function num : 0_20
  if not (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender") then
    return false
  end
  return true
end

Infrastructure_GetEnvironmentPath = function(l_22_0)
  -- function num : 0_21
  local l_22_1 = (sysio.ExpandFilePath)(l_22_0)
  if not l_22_1 then
    return nil
  end
  for l_22_5,l_22_6 in pairs(l_22_1) do
    if not (string.find)(l_22_6, l_22_0, 1, true) then
      return l_22_6
    end
  end
  return nil
end

Infrastructure_EnableUAC = function()
  -- function num : 0_22
  local l_23_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if l_23_0 then
    (sysio.SetRegValueAsDword)(l_23_0, "EnableLUA", 1)
  end
end

Infrastructure_EnableSystemRestore = function()
  -- function num : 0_23
  local l_24_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\SystemRestore")
  if l_24_0 then
    (sysio.SetRegValueAsDword)(l_24_0, "DisableSR", 0)
  end
end

Infrastructure_EnableTaskbarNotification = function()
  -- function num : 0_24
  local l_25_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer")
  if l_25_0 then
    (sysio.SetRegValueAsDword)(l_25_0, "TaskbarNoNotification", 0)
  end
  local l_25_1 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer")
  for l_25_5,l_25_6 in pairs(l_25_1) do
    local l_25_7 = (sysio.RegOpenKey)(l_25_6)
    if l_25_7 then
      (sysio.SetRegValueAsDword)(l_25_7, "TaskbarNoNotification", 0)
    end
  end
end

Infrastructure_EnableActionCenterMessages = function()
  -- function num : 0_25
  local l_26_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer")
  if l_26_0 then
    (sysio.SetRegValueAsDword)(l_26_0, "HideSCAHealth", 0)
  end
  local l_26_1 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer")
  for l_26_5,l_26_6 in pairs(l_26_1) do
    local l_26_7 = (sysio.RegOpenKey)(l_26_6)
    if l_26_7 then
      (sysio.SetRegValueAsDword)(l_26_7, "HideSCAHealth", 0)
    end
  end
end

Infrastructure_CleanUninstallByDisplayNameList = function(l_27_0)
  -- function num : 0_26
  local l_27_1 = LowerSet(l_27_0)
  Infrastructure_CleanUninstallByDisplayNameList_RegPath(l_27_1, "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\")
  Infrastructure_CleanUninstallByDisplayNameList_RegPath(l_27_1, "HKLM\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\")
  local l_27_2 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\")
  if l_27_2 then
    for l_27_6,l_27_7 in pairs(l_27_2) do
      Infrastructure_CleanUninstallByDisplayNameList_RegPath(l_27_1, l_27_7)
    end
  end
  do
    local l_27_8 = (sysio.RegExpandUserKey)("HKCU\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\")
    if l_27_8 then
      for l_27_12,l_27_13 in pairs(l_27_8) do
        Infrastructure_CleanUninstallByDisplayNameList_RegPath(l_27_1, l_27_13)
      end
    end
  end
end

Infrastructure_CleanUninstallByDisplayNameList_RegPath = function(l_28_0, l_28_1)
  -- function num : 0_27
  local l_28_2 = (sysio.RegOpenKey)(l_28_1)
  if l_28_2 ~= nil then
    local l_28_3 = (sysio.RegEnumKeys)(l_28_2)
    if l_28_3 then
      for l_28_7,l_28_8 in pairs(l_28_3) do
        Infrastructure_CleanUninstallByDisplayNameList_Identifier(l_28_0, l_28_1 .. "\\" .. l_28_8)
      end
    end
  end
end

Infrastructure_CleanUninstallByDisplayNameList_Identifier = function(l_29_0, l_29_1)
  -- function num : 0_28
  local l_29_2 = (sysio.RegOpenKey)(l_29_1)
  if l_29_2 ~= nil then
    local l_29_3 = (sysio.GetRegValueAsString)(l_29_2, "DisplayName")
    if l_29_3 ~= nil and l_29_0[(string.lower)(l_29_3)] ~= nil then
      (sysio.DeleteRegKey)(l_29_2, nil)
    end
  end
end

Infrastructure_CleanUninstallByDisplayName = function(l_30_0)
  -- function num : 0_29
  l_30_0 = (string.lower)(l_30_0)
  Infrastructure_CleanUninstallByDisplayName_RegPath(l_30_0, "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\")
  Infrastructure_CleanUninstallByDisplayName_RegPath(l_30_0, "HKLM\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\")
  local l_30_1 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\")
  if l_30_1 then
    for l_30_5,l_30_6 in pairs(l_30_1) do
      Infrastructure_CleanUninstallByDisplayName_RegPath(l_30_0, l_30_6)
    end
  end
  do
    local l_30_7 = (sysio.RegExpandUserKey)("HKCU\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\")
    if l_30_7 then
      for l_30_11,l_30_12 in pairs(l_30_7) do
        Infrastructure_CleanUninstallByDisplayName_RegPath(l_30_0, l_30_12)
      end
    end
  end
end

Infrastructure_CleanUninstallByDisplayName_RegPath = function(l_31_0, l_31_1)
  -- function num : 0_30
  local l_31_2 = (sysio.RegOpenKey)(l_31_1)
  if l_31_2 ~= nil then
    local l_31_3 = (sysio.RegEnumKeys)(l_31_2)
    if l_31_3 then
      for l_31_7,l_31_8 in pairs(l_31_3) do
        Infrastructure_CleanUninstallByDisplayName_Identifier(l_31_0, l_31_1 .. "\\" .. l_31_8)
      end
    end
  end
end

Infrastructure_CleanUninstallByDisplayName_Identifier = function(l_32_0, l_32_1)
  -- function num : 0_31
  local l_32_2 = (sysio.RegOpenKey)(l_32_1)
  if l_32_2 ~= nil then
    local l_32_3 = (sysio.GetRegValueAsString)(l_32_2, "DisplayName")
    if l_32_3 ~= nil and l_32_0 == (string.lower)(l_32_3) then
      (sysio.DeleteRegKey)(l_32_2, nil)
    end
  end
end

Infrastructure_CleanSearchByDisplayNameList = function(l_33_0)
  -- function num : 0_32
  local l_33_1 = LowerSet(l_33_0)
  Infrastructure_CleanSearchByDisplayNameList_RegPath(l_33_1, "HKLM\\SOFTWARE\\Microsoft\\Internet Explorer\\SearchScopes\\")
  Infrastructure_CleanSearchByDisplayNameList_RegPath(l_33_1, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Internet Explorer\\SearchScopes\\")
  local l_33_2 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Internet Explorer\\SearchScopes\\")
  if l_33_2 then
    for l_33_6,l_33_7 in pairs(l_33_2) do
      Infrastructure_CleanSearchByDisplayNameList_RegPath(l_33_1, l_33_7)
    end
  end
  do
    local l_33_8 = (sysio.RegExpandUserKey)("HKCU\\Software\\Wow6432Node\\Microsoft\\Internet Explorer\\SearchScopes\\")
    if l_33_8 then
      for l_33_12,l_33_13 in pairs(l_33_8) do
        Infrastructure_CleanSearchByDisplayNameList_RegPath(l_33_1, l_33_13)
      end
    end
  end
end

Infrastructure_CleanSearchByDisplayNameList_RegPath = function(l_34_0, l_34_1)
  -- function num : 0_33
  local l_34_2 = (sysio.RegOpenKey)(l_34_1)
  if l_34_2 ~= nil then
    local l_34_3 = (sysio.RegEnumKeys)(l_34_2)
    if l_34_3 then
      for l_34_7,l_34_8 in pairs(l_34_3) do
        Infrastructure_CleanSearchByDisplayNameList_RegPath_SearchScope(l_34_0, l_34_1 .. "\\" .. l_34_8)
      end
    end
  end
end

Infrastructure_CleanSearchByDisplayNameList_RegPath_SearchScope = function(l_35_0, l_35_1)
  -- function num : 0_34
  local l_35_2 = (sysio.RegOpenKey)(l_35_1)
  if l_35_2 ~= nil then
    local l_35_3 = (sysio.GetRegValueAsString)(l_35_2, "DisplayName")
    if l_35_3 ~= nil and l_35_0[(string.lower)(l_35_3)] ~= nil then
      (sysio.DeleteRegKey)(l_35_2, nil)
    end
    local l_35_4 = (sysio.GetRegValueAsString)(l_35_2, "")
    if l_35_4 ~= nil and l_35_0[(string.lower)(l_35_4)] ~= nil then
      (sysio.DeleteRegKey)(l_35_2, nil)
    end
  end
end

Infrastructure_CleanSearchByDisplayName = function(l_36_0)
  -- function num : 0_35
  local l_36_1 = (string.lower)(l_36_0)
  Infrastructure_CleanSearchByDisplayName_RegPath(l_36_1, "HKLM\\SOFTWARE\\Microsoft\\Internet Explorer\\SearchScopes\\")
  Infrastructure_CleanSearchByDisplayName_RegPath(l_36_1, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Internet Explorer\\SearchScopes\\")
  local l_36_2 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Internet Explorer\\SearchScopes\\")
  if l_36_2 then
    for l_36_6,l_36_7 in pairs(l_36_2) do
      Infrastructure_CleanSearchByDisplayName_RegPath(l_36_1, l_36_7)
    end
  end
  do
    local l_36_8 = (sysio.RegExpandUserKey)("HKCU\\Software\\Wow6432Node\\Microsoft\\Internet Explorer\\SearchScopes\\")
    if l_36_8 then
      for l_36_12,l_36_13 in pairs(l_36_8) do
        Infrastructure_CleanSearchByDisplayName_RegPath(l_36_1, l_36_13)
      end
    end
  end
end

Infrastructure_CleanSearchByDisplayName_RegPath = function(l_37_0, l_37_1)
  -- function num : 0_36
  local l_37_2 = (sysio.RegOpenKey)(l_37_1)
  if l_37_2 ~= nil then
    local l_37_3 = (sysio.RegEnumKeys)(l_37_2)
    if l_37_3 then
      for l_37_7,l_37_8 in pairs(l_37_3) do
        Infrastructure_CleanSearchByDisplayName_RegPath_SearchScope(l_37_0, l_37_1 .. "\\" .. l_37_8)
      end
    end
  end
end

Infrastructure_CleanSearchByDisplayName_RegPath_SearchScope = function(l_38_0, l_38_1)
  -- function num : 0_37
  local l_38_2 = (sysio.RegOpenKey)(l_38_1)
  if l_38_2 ~= nil then
    local l_38_3 = (sysio.GetRegValueAsString)(l_38_2, "DisplayName")
    if l_38_3 ~= nil then
      l_38_3 = (string.lower)(l_38_3)
      if (string.match)(l_38_3, l_38_0) ~= nil then
        (sysio.DeleteRegKey)(l_38_2, nil)
      end
    end
    local l_38_4 = (sysio.GetRegValueAsString)(l_38_2, "")
    if l_38_4 ~= nil then
      l_38_4 = (string.lower)(l_38_4)
      if (string.match)(l_38_4, l_38_0) ~= nil then
        (sysio.DeleteRegKey)(l_38_2, nil)
      end
    end
  end
end

Infrastructure_CleanSearchByURLDomainNameList = function(l_39_0)
  -- function num : 0_38
  local l_39_1 = LowerSet(l_39_0)
  Infrastructure_CleanSearchByURLDomainNameList_RegPath(l_39_1, "HKLM\\SOFTWARE\\Microsoft\\Internet Explorer\\SearchScopes\\")
  Infrastructure_CleanSearchByURLDomainNameList_RegPath(l_39_1, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Internet Explorer\\SearchScopes\\")
  local l_39_2 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Internet Explorer\\SearchScopes\\")
  if l_39_2 then
    for l_39_6,l_39_7 in pairs(l_39_2) do
      Infrastructure_CleanSearchByURLDomainNameList_RegPath(l_39_1, l_39_7)
    end
  end
  do
    local l_39_8 = (sysio.RegExpandUserKey)("HKCU\\Software\\Wow6432Node\\Microsoft\\Internet Explorer\\SearchScopes\\")
    if l_39_8 then
      for l_39_12,l_39_13 in pairs(l_39_8) do
        Infrastructure_CleanSearchByURLDomainNameList_RegPath(l_39_1, l_39_13)
      end
    end
  end
end

Infrastructure_CleanSearchByURLDomainNameList_RegPath = function(l_40_0, l_40_1)
  -- function num : 0_39
  local l_40_2 = (sysio.RegOpenKey)(l_40_1)
  if l_40_2 ~= nil then
    local l_40_3 = (sysio.RegEnumKeys)(l_40_2)
    if l_40_3 then
      for l_40_7,l_40_8 in pairs(l_40_3) do
        Infrastructure_CleanSearchByURLDomainNameList_RegPath_SearchScope(l_40_0, l_40_1 .. "\\" .. l_40_8)
      end
    end
  end
end

Infrastructure_CleanSearchByURLDomainNameList_RegPath_SearchScope = function(l_41_0, l_41_1)
  -- function num : 0_40
  local l_41_2 = (sysio.RegOpenKey)(l_41_1)
  if l_41_2 ~= nil then
    local l_41_3 = (sysio.GetRegValueAsString)(l_41_2, "URL")
    if l_41_3 ~= nil then
      local l_41_4 = (string.lower)(Infrastructure_GetDomainFromURL(l_41_3))
      local l_41_5 = (string.len)(l_41_4)
      for l_41_9 in pairs(l_41_0) do
        local l_41_10 = (string.len)(l_41_9)
        if l_41_10 <= l_41_5 then
          local l_41_11 = (string.sub)(l_41_4, l_41_5 - l_41_10 + 1)
          if l_41_11 ~= nil and l_41_11 == l_41_9 then
            (sysio.DeleteRegKey)(l_41_2, nil)
          end
        end
      end
    end
  end
end

Infrastructure_CleanSearchByURLDomainName = function(l_42_0)
  -- function num : 0_41
  local l_42_1 = (string.lower)(l_42_0)
  Infrastructure_CleanSearchByURLDomainName_RegPath(l_42_1, "HKLM\\SOFTWARE\\Microsoft\\Internet Explorer\\SearchScopes\\")
  Infrastructure_CleanSearchByURLDomainName_RegPath(l_42_1, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Internet Explorer\\SearchScopes\\")
  local l_42_2 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Internet Explorer\\SearchScopes\\")
  if l_42_2 then
    for l_42_6,l_42_7 in pairs(l_42_2) do
      Infrastructure_CleanSearchByURLDomainName_RegPath(l_42_1, l_42_7)
    end
  end
  do
    local l_42_8 = (sysio.RegExpandUserKey)("HKCU\\Software\\Wow6432Node\\Microsoft\\Internet Explorer\\SearchScopes\\")
    if l_42_8 then
      for l_42_12,l_42_13 in pairs(l_42_8) do
        Infrastructure_CleanSearchByURLDomainName_RegPath(l_42_1, l_42_13)
      end
    end
  end
end

Infrastructure_CleanSearchByURLDomainName_RegPath = function(l_43_0, l_43_1)
  -- function num : 0_42
  local l_43_2 = (sysio.RegOpenKey)(l_43_1)
  if l_43_2 ~= nil then
    local l_43_3 = (sysio.RegEnumKeys)(l_43_2)
    if l_43_3 then
      for l_43_7,l_43_8 in pairs(l_43_3) do
        Infrastructure_CleanSearchByURLDomainName_RegPath_SearchScope(l_43_0, l_43_1 .. "\\" .. l_43_8)
      end
    end
  end
end

Infrastructure_CleanSearchByURLDomainName_RegPath_SearchScope = function(l_44_0, l_44_1)
  -- function num : 0_43
  local l_44_2 = (sysio.RegOpenKey)(l_44_1)
  if l_44_2 ~= nil then
    local l_44_3 = (sysio.GetRegValueAsString)(l_44_2, "URL")
    if l_44_3 ~= nil then
      local l_44_4 = (string.lower)(Infrastructure_GetDomainFromURL(l_44_3))
      local l_44_5 = (string.len)(l_44_4)
      local l_44_6 = (string.len)(l_44_0)
      if l_44_6 <= l_44_5 then
        local l_44_7 = (string.sub)(l_44_4, l_44_5 - l_44_6 + 1)
        if l_44_7 ~= nil and l_44_0 == l_44_7 then
          (sysio.DeleteRegKey)(l_44_2, nil)
        end
      end
    end
  end
end

Infrastructure_GetDomainFromURL = function(l_45_0)
  -- function num : 0_44
  if l_45_0 == nil then
    return 
  end
  local l_45_1 = l_45_0
  local l_45_2, l_45_3 = (string.find)(l_45_1, "//", 1, true)
  if l_45_3 ~= nil and l_45_3 > 2 and l_45_3 < (string.len)(l_45_1) then
    l_45_1 = (string.sub)(l_45_1, l_45_3 + 1)
  end
  local l_45_4 = (string.find)(l_45_1, "/", 1, true)
  if l_45_4 ~= nil and l_45_4 > 1 then
    l_45_1 = (string.sub)(l_45_1, 1, l_45_4 - 1)
  end
  return l_45_1
end

Infrastructure_CleanToolbarByNameList = function(l_46_0)
  -- function num : 0_45
  local l_46_1 = LowerSet(l_46_0)
  Infrastructure_CleanToolbarByNameList_RegPath(l_46_1, "HKLM\\SOFTWARE\\Microsoft\\Internet Explorer\\Toolbar\\")
  Infrastructure_CleanToolbarByNameList_RegPath(l_46_1, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Internet Explorer\\Toolbar\\")
  local l_46_2 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Microsoft\\Internet Explorer\\Toolbar\\")
  if l_46_2 then
    for l_46_6,l_46_7 in pairs(l_46_2) do
      Infrastructure_CleanToolbarByName_RegPath(l_46_1, l_46_7)
    end
  end
  do
    local l_46_8 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Wow6432Node\\Microsoft\\Internet Explorer\\Toolbar\\")
    if l_46_8 then
      for l_46_12,l_46_13 in pairs(l_46_8) do
        Infrastructure_CleanToolbarByName_RegPath(l_46_1, l_46_13)
      end
    end
  end
end

Infrastructure_CleanToolbarByNameList_RegPath = function(l_47_0, l_47_1)
  -- function num : 0_46
  local l_47_2 = (sysio.RegOpenKey)(l_47_1)
  if l_47_2 ~= nil then
    local l_47_3 = (sysio.RegEnumValues)(l_47_2)
    if l_47_3 then
      for l_47_7,l_47_8 in pairs(l_47_3) do
        local l_47_9 = (sysio.GetRegValueAsString)(l_47_2, l_47_8)
        if l_47_9 ~= nil and l_47_0[(string.lower)(l_47_9)] ~= nil then
          (sysio.DeleteRegValue)(l_47_2, l_47_8)
          Infrastructure_RemoveClsid(l_47_8)
          Infrastructure_IE_DisableExtensionsByMatch(l_47_8)
        end
      end
    end
  end
end

Infrastructure_CleanToolbarByName = function(l_48_0)
  -- function num : 0_47
  l_48_0 = (string.lower)(l_48_0)
  Infrastructure_CleanToolbarByName_RegPath(l_48_0, "HKLM\\SOFTWARE\\Microsoft\\Internet Explorer\\Toolbar\\")
  Infrastructure_CleanToolbarByName_RegPath(l_48_0, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Internet Explorer\\Toolbar\\")
  local l_48_1 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Microsoft\\Internet Explorer\\Toolbar\\")
  if l_48_1 then
    for l_48_5,l_48_6 in pairs(l_48_1) do
      Infrastructure_CleanToolbarByName_RegPath(l_48_0, l_48_6)
    end
  end
  do
    local l_48_7 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Wow6432Node\\Microsoft\\Internet Explorer\\Toolbar\\")
    if l_48_7 then
      for l_48_11,l_48_12 in pairs(l_48_7) do
        Infrastructure_CleanToolbarByName_RegPath(l_48_0, l_48_12)
      end
    end
  end
end

Infrastructure_CleanToolbarByName_RegPath = function(l_49_0, l_49_1)
  -- function num : 0_48
  local l_49_2 = (sysio.RegOpenKey)(l_49_1)
  if l_49_2 ~= nil then
    local l_49_3 = (sysio.RegEnumValues)(l_49_2)
    if l_49_3 then
      for l_49_7,l_49_8 in pairs(l_49_3) do
        local l_49_9 = (sysio.GetRegValueAsString)(l_49_2, l_49_8)
        if l_49_9 ~= nil then
          l_49_9 = (string.lower)(l_49_9)
          if (string.find)(l_49_9, l_49_0, 1, true) ~= nil then
            (sysio.DeleteRegValue)(l_49_2, l_49_8)
            Infrastructure_RemoveClsid(l_49_8)
            Infrastructure_IE_DisableExtensionsByMatch(l_49_8)
          end
        end
      end
    end
  end
end

Infrastructure_CleanBHOByNameList = function(l_50_0)
  -- function num : 0_49
  local l_50_1 = LowerSet(l_50_0)
  Infrastructure_CleanBHOByNameList_RegPath(l_50_1, "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects\\")
  Infrastructure_CleanBHOByNameList_RegPath(l_50_1, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects\\")
  local l_50_2 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects\\")
  if l_50_2 then
    for l_50_6,l_50_7 in pairs(l_50_2) do
      Infrastructure_CleanBHOByNameList_RegPath(l_50_1, l_50_7)
    end
  end
  do
    local l_50_8 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects\\")
    if l_50_8 then
      for l_50_12,l_50_13 in pairs(l_50_8) do
        Infrastructure_CleanBHOByNameList_RegPath(l_50_1, l_50_13)
      end
    end
  end
end

Infrastructure_CleanBHOByNameList_RegPath = function(l_51_0, l_51_1)
  -- function num : 0_50
  local l_51_2 = (sysio.RegOpenKey)(l_51_1)
  if l_51_2 ~= nil then
    local l_51_3 = (sysio.RegEnumKeys)(l_51_2)
    if l_51_3 then
      for l_51_7,l_51_8 in pairs(l_51_3) do
        Infrastructure_CleanBHOByNameList_RegPath_Clsid(l_51_0, l_51_1, l_51_8)
      end
    end
  end
end

Infrastructure_CleanBHOByNameList_RegPath_Clsid = function(l_52_0, l_52_1, l_52_2)
  -- function num : 0_51
  local l_52_3 = (sysio.RegOpenKey)(l_52_1 .. "\\" .. l_52_2)
  if l_52_3 ~= nil then
    local l_52_4 = (sysio.GetRegValueAsString)(l_52_3, nil)
    if l_52_4 ~= nil and l_52_0[(string.lower)(l_52_4)] ~= nil then
      (sysio.DeleteRegKey)(l_52_3, nil)
      Infrastructure_IE_DisableExtensionsByMatch(l_52_2)
      Infrastructure_RemoveClsid(l_52_2)
    end
  end
end

Infrastructure_CleanBHOByName = function(l_53_0)
  -- function num : 0_52
  l_53_0 = (string.lower)(l_53_0)
  Infrastructure_CleanBHOByName_RegPath(l_53_0, "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects\\")
  Infrastructure_CleanBHOByName_RegPath(l_53_0, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects\\")
  local l_53_1 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects\\")
  if l_53_1 then
    for l_53_5,l_53_6 in pairs(l_53_1) do
      Infrastructure_CleanBHOByName_RegPath(l_53_0, l_53_6)
    end
  end
  do
    local l_53_7 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects\\")
    if l_53_7 then
      for l_53_11,l_53_12 in pairs(l_53_7) do
        Infrastructure_CleanBHOByName_RegPath(l_53_0, l_53_12)
      end
    end
  end
end

Infrastructure_CleanBHOByName_RegPath = function(l_54_0, l_54_1)
  -- function num : 0_53
  local l_54_2 = (sysio.RegOpenKey)(l_54_1)
  if l_54_2 ~= nil then
    local l_54_3 = (sysio.RegEnumKeys)(l_54_2)
    if l_54_3 then
      for l_54_7,l_54_8 in pairs(l_54_3) do
        Infrastructure_CleanBHOByName_RegPath_Clsid(l_54_0, l_54_1, l_54_8)
      end
    end
  end
end

Infrastructure_CleanBHOByName_RegPath_Clsid = function(l_55_0, l_55_1, l_55_2)
  -- function num : 0_54
  local l_55_3 = (sysio.RegOpenKey)(l_55_1 .. "\\" .. l_55_2)
  if l_55_3 ~= nil then
    local l_55_4 = (sysio.GetRegValueAsString)(l_55_3, nil)
    if l_55_4 ~= nil and l_55_0 == (string.lower)(l_55_4) then
      (sysio.DeleteRegKey)(l_55_3, nil)
      Infrastructure_IE_DisableExtensionsByMatch(l_55_2)
      Infrastructure_RemoveClsid(l_55_2)
    end
  end
end

Infrastructure_RemoveClsid = function(l_56_0)
  -- function num : 0_55
  if (string.len)(l_56_0) == 38 then
    Infrastructure_RemoveClsid_RegPath(l_56_0, "HKLM\\SOFTWARE\\Classes\\CLSID\\")
    Infrastructure_RemoveClsid_RegPath(l_56_0, "HKLM\\SOFTWARE\\Wow6432Node\\Classes\\CLSID\\")
    local l_56_1 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Classes\\CLSID\\")
    if l_56_1 then
      for l_56_5,l_56_6 in pairs(l_56_1) do
        Infrastructure_RemoveClsid_RegPath(l_56_0, l_56_6)
      end
    end
    do
      local l_56_7 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Wow6432Node\\Classes\\CLSID\\")
      if l_56_7 then
        for l_56_11,l_56_12 in pairs(l_56_7) do
          Infrastructure_RemoveClsid_RegPath(l_56_0, l_56_12)
        end
      end
    end
  end
end

Infrastructure_RemoveClsid_RegPath = function(l_57_0, l_57_1)
  -- function num : 0_56
  Infrastructure_DeleteRegKey_Recursive(l_57_1 .. "\\" .. l_57_0)
end

Infrastructure_DeleteRegKey_Recursive = function(l_58_0)
  -- function num : 0_57
  local l_58_1 = (sysio.RegOpenKey)(l_58_0)
  if l_58_1 then
    local l_58_2 = (sysio.RegEnumKeys)(l_58_1)
    if l_58_2 then
      for l_58_6,l_58_7 in pairs(l_58_2) do
        Infrastructure_DeleteRegKey_Recursive(l_58_0 .. "\\" .. l_58_7)
      end
    end
    do
      ;
      (sysio.DeleteRegKey)(l_58_1, nil)
    end
  end
end

Infrastructure_ConsentPromptBehaviorAdmin = function()
  -- function num : 0_58
  local l_59_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if l_59_0 then
    (sysio.SetRegValueAsDword)(l_59_0, "ConsentPromptBehaviorAdmin", 5)
  end
end

Infrastructure_ConsentPromptBehaviorUser = function()
  -- function num : 0_59
  local l_60_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if l_60_0 then
    (sysio.SetRegValueAsDword)(l_60_0, "ConsentPromptBehaviorUser", 3)
  end
end

Infrastructure_EnableInstallerDetection = function()
  -- function num : 0_60
  local l_61_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if l_61_0 then
    (sysio.SetRegValueAsDword)(l_61_0, "EnableInstallerDetection", 1)
  end
end

Infrastructure_EnableSecureUIAPaths = function()
  -- function num : 0_61
  local l_62_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if l_62_0 then
    (sysio.SetRegValueAsDword)(l_62_0, "EnableSecureUIAPaths", 1)
  end
end

Infrastructure_EnableVirtualization = function()
  -- function num : 0_62
  local l_63_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if l_63_0 then
    (sysio.SetRegValueAsDword)(l_63_0, "EnableVirtualization", 1)
  end
end

Infrastructure_PromptOnSecureDesktop = function()
  -- function num : 0_63
  local l_64_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if l_64_0 then
    (sysio.SetRegValueAsDword)(l_64_0, "PromptOnSecureDesktop", 1)
  end
end

Infrastructure_ValidateAdminCodeSignatures = function()
  -- function num : 0_64
  local l_65_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if l_65_0 then
    (sysio.SetRegValueAsDword)(l_65_0, "ValidateAdminCodeSignatures", 0)
  end
end

Infrastructure_FilterAdministratorToken = function()
  -- function num : 0_65
  local l_66_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if l_66_0 then
    (sysio.SetRegValueAsDword)(l_66_0, "FilterAdministratorToken", 0)
  end
end

Infrastructure_NoDriveTypeAutoRun = function()
  -- function num : 0_66
  local l_67_0 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer")
  for l_67_4,l_67_5 in pairs(l_67_0) do
    local l_67_6 = (sysio.RegOpenKey)(l_67_5)
    if l_67_6 then
      (sysio.DeleteRegValue)(l_67_6, "NoDriveTypeAutoRun")
    end
  end
  local l_67_7 = "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer\\\\NoDriveTypeAutoRun"
  ;
  (Remediation.BtrDeleteRegValue)(l_67_7)
end

Infrastructure_EnableRegistryTools = function()
  -- function num : 0_67
  local l_68_0 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System")
  for l_68_4,l_68_5 in pairs(l_68_0) do
    local l_68_6 = (sysio.RegOpenKey)(l_68_5)
    if l_68_6 then
      (sysio.DeleteRegValue)(l_68_6, "DisableRegistryTools")
    end
  end
  local l_68_7 = "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\\\DisableRegistryTools"
  ;
  (Remediation.BtrDeleteRegValue)(l_68_7)
end

Infrastructure_RemoveLinkedConnectionsRegKey = function()
  -- function num : 0_68
  local l_69_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\system")
  if l_69_0 then
    (sysio.DeleteRegValue)(l_69_0, "EnableLinkedConnections")
  end
end

Infrastructure_EnableTaskManager = function()
  -- function num : 0_69
  local l_70_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\taskmgr.exe")
  if l_70_0 then
    (sysio.DeleteRegValue)(l_70_0, "Debugger")
  end
  local l_70_1 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System")
  for l_70_5,l_70_6 in pairs(l_70_1) do
    local l_70_7 = (sysio.RegOpenKey)(l_70_6)
    if l_70_7 then
      (sysio.DeleteRegValue)(l_70_7, "DisableTaskMgr")
    end
  end
  ;
  (Remediation.BtrDeleteRegValue)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\\\DisableTaskMgr")
end

Infrastructure_GetFilePathFromGUID = function(l_71_0)
  -- function num : 0_70
  if (string.len)(l_71_0) == 38 then
    local l_71_1 = (sysio.RegOpenKey)("HKCR\\CLSID\\" .. l_71_0 .. "\\InprocServer32")
    if l_71_1 then
      return (sysio.GetRegValueAsString)(l_71_1, "")
    end
  end
end

Infrastructure_GetUninstallStrFromKey = function(l_72_0, l_72_1)
  -- function num : 0_71
  if l_72_0 ~= nil and l_72_1 ~= nil then
    local l_72_2 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\" .. l_72_0)
    if l_72_2 then
      return (sysio.GetRegValueAsString)(l_72_2, l_72_1)
    end
  end
end

Infrastructure_IE_GetExtPolicyGUIDfromMatch = function(l_73_0)
  -- function num : 0_72
  local l_73_1 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Ext\\CLSID")
  if l_73_1 ~= nil then
    local l_73_2 = (sysio.RegEnumValues)(l_73_1)
    if l_73_2 then
      for l_73_6,l_73_7 in pairs(l_73_2) do
        if (string.match)(l_73_7, l_73_0) then
          return l_73_7
        end
      end
    end
  end
end

Infrastructure_SplitThreatPath = function(l_74_0)
  -- function num : 0_73
  if l_74_0 == nil then
    return 
  end
  local l_74_1 = (string.gsub)(l_74_0:lower(), "->.*", "")
  local l_74_2, l_74_3 = (string.match)(l_74_1, "(.*\\)(.*)")
  local l_74_4, l_74_5, l_74_6 = nil, nil, nil
  if l_74_2 then
    l_74_2 = l_74_2:gsub("^\\\\%?\\", "")
    l_74_4 = (string.match)(l_74_2, "([^\\]+)\\$")
  end
  if l_74_3 then
    l_74_5 = (string.match)(l_74_3, "(.*)%.(.*)$")
    if l_74_5 == nil then
      l_74_5 = l_74_3
    else
      l_74_5 = l_74_5 .. "." .. l_74_6
    end
  end
  return l_74_2, l_74_4, l_74_5, l_74_6
end

Infrastructure_GetAvailableDrives = function()
  -- function num : 0_74
  local l_75_0 = (sysio.GetLogicalDrivesMask)()
  local l_75_1 = {}
  local l_75_2 = {}
  local l_75_3 = {}
  local l_75_4 = {}
  local l_75_5 = 65
  for l_75_9 = 2, 32 do
    if (crypto.bitand)((crypto.shr32)(l_75_0, l_75_9), 1) == 1 then
      local l_75_10 = (string.format)("%c:\\", l_75_5 + l_75_9)
      local l_75_11 = (sysio.GetLogicalDriveType)(l_75_9)
      if l_75_11 == 2 then
        (table.insert)(l_75_2, l_75_10)
      else
        if l_75_11 == 3 then
          (table.insert)(l_75_3, l_75_10)
        else
          if l_75_11 == 4 then
            (table.insert)(l_75_4, l_75_10)
          end
        end
      end
      ;
      (table.insert)(l_75_1, l_75_10)
    end
  end
  return l_75_1, l_75_2, l_75_3, l_75_4
end

Infrastructure_ClearALLDNS = function()
  -- function num : 0_75
  local l_76_0 = (sysio.RegOpenKey)("HKLM\\SYSTEM\\CurrentControlSet\\services\\Tcpip\\Parameters")
  if l_76_0 then
    local l_76_1 = (sysio.GetRegValueAsString)(l_76_0, "DhcpNameServer")
    if l_76_1 then
      (sysio.SetRegValueAsString)(l_76_0, "DhcpNameServer", "")
    end
    local l_76_2 = (sysio.GetRegValueAsString)(l_76_0, "NameServer")
    if l_76_2 then
      (sysio.SetRegValueAsString)(l_76_0, "NameServer", "")
    end
  end
  do
    local l_76_3 = (sysio.RegOpenKey)("HKLM\\SYSTEM\\CurrentControlSet\\services\\Tcpip\\Parameters\\Interfaces")
    if l_76_3 then
      local l_76_4 = (sysio.RegEnumKeys)(l_76_3)
      if l_76_4 then
        for l_76_8,l_76_9 in pairs(l_76_4) do
          Infrastructure_ClearDNSTcpipInterface("HKLM\\SYSTEM\\CurrentControlSet\\services\\Tcpip\\Parameters\\Interfaces\\" .. l_76_9)
        end
      end
    end
  end
end

Infrastructure_ClearDNSTcpipInterface = function(l_77_0)
  -- function num : 0_76
  local l_77_1 = (sysio.RegOpenKey)(l_77_0)
  if l_77_1 then
    local l_77_2 = (sysio.GetRegValueAsString)(l_77_1, "NameServer")
    if l_77_2 then
      (sysio.SetRegValueAsString)(l_77_1, "NameServer", "")
    end
    l_77_2 = (sysio.GetRegValueAsString)(l_77_1, "DhcpNameServer")
    if l_77_2 then
      (sysio.SetRegValueAsString)(l_77_1, "DhcpNameServer", "")
    end
  end
end

Infrastructure_NotSystemFolder = function(l_78_0)
  -- function num : 0_77
  if l_78_0 then
    local l_78_1 = (string.match)(l_78_0, ":\\.*\\")
    if l_78_1 then
      local l_78_2 = 210
      if (MpCommon.NidSearch)(l_78_2, (crypto.CRC32Buffer)(-1, (string.lower)(l_78_1), 0, (string.len)(l_78_1))) == false and l_78_2 ~= "#CleanFolder" then
        return l_78_0
      end
    end
  end
  do
    return nil
  end
end

Infrastructure_NotUserSystemFolder = function(l_79_0)
  -- function num : 0_78
  if l_79_0 then
    local l_79_1 = (string.gsub)((string.lower)(l_79_0), "^%a:\\users\\[^\\]+", "")
    if l_79_1 and l_79_1 ~= "\\" then
      local l_79_2 = 210
      if (MpCommon.NidSearch)(l_79_2, (crypto.CRC32Buffer)(-1, (string.lower)(l_79_1), 0, (string.len)(l_79_1))) == false and l_79_2 ~= "#CleanFolder" then
        return l_79_0
      end
    end
  end
  do
    return nil
  end
end

Infrastructure_ValidUwSFolderForRemediation = function(l_80_0)
  -- function num : 0_79
  if l_80_0 then
    l_80_0 = (string.lower)(l_80_0)
    if (string.find)(l_80_0, ":\\program files", 1, true) or (string.find)(l_80_0, ":\\programdata", 1, true) or (string.find)(l_80_0, ":\\users\\[^\\]+\\appdata\\", 1, false) then
      return true
    end
  end
  return false
end

Infrastructure_DetectionReportFolder = function(l_81_0, l_81_1, l_81_2)
  -- function num : 0_80
  if l_81_0 == nil or l_81_1 == nil or l_81_2 ~= true and l_81_2 ~= false then
    return false
  end
  local l_81_3, l_81_4, l_81_5 = Infrastructure_SplitThreatPath(l_81_1)
  if l_81_3 then
    local l_81_6 = l_81_3:gsub("^\\\\%?\\", "")
    if l_81_6 then
      local l_81_7 = Infrastructure_NotSystemFolder(l_81_6)
      local l_81_8 = Infrastructure_NotUserSystemFolder(l_81_6)
      if l_81_7 and l_81_8 then
        if l_81_2 == true and Infrastructure_ValidUwSFolderForRemediation(l_81_6) == false then
          return false
        end
        local l_81_9 = (sysio.FindFiles)(l_81_6, "*", -1)
        for l_81_13,l_81_14 in pairs(l_81_9) do
          (MpDetection.ReportResource)("file", l_81_14, l_81_0, false)
        end
        ;
        (MpDetection.ReportResource)("folder", l_81_6, l_81_0, false)
        local l_81_15 = (sysio.FindFolders)(l_81_6, "*", -1)
        for l_81_19,l_81_20 in pairs(l_81_15) do
          (MpDetection.ReportResource)("folder", l_81_20, l_81_0, false)
        end
      end
    end
  end
end

Infrastructure_CleanRegistryUninstallLocation = function(l_82_0)
  -- function num : 0_81
  if l_82_0 then
    local l_82_1 = {}
    -- DECOMPILER ERROR at PC5: No list found for R1 , SetList fails

    -- DECOMPILER ERROR at PC6: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC8: Overwrote pending register: R3 in 'AssignReg'

    local l_82_2 = (("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\").RegExpandUserKey)("HKLM\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\")
    local l_82_3 = (sysio.RegExpandUserKey)("HKCU\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\")
    for l_82_7,l_82_8 in pairs(l_82_2) do
      (table.insert)(l_82_1, l_82_8)
    end
    for l_82_12,l_82_13 in pairs(l_82_3) do
      (table.insert)(l_82_1, l_82_13)
    end
    for l_82_17,l_82_18 in pairs(l_82_1) do
      local l_82_19 = (sysio.RegOpenKey)(l_82_18)
      if l_82_19 then
        local l_82_20 = (sysio.RegEnumKeys)(l_82_19)
        if l_82_20 then
          for l_82_24,l_82_25 in pairs(l_82_20) do
            local l_82_26 = (sysio.RegOpenKey)(l_82_18 .. l_82_25)
            if l_82_26 then
              local l_82_27 = (sysio.GetRegValueAsString)(l_82_26, "InstallLocation")
              if l_82_27 and (string.lower)(l_82_27) == (string.lower)(l_82_0) then
                (sysio.DeleteRegKey)(l_82_26, nil)
                return true
              end
            end
          end
        end
      end
    end
    -- DECOMPILER ERROR at PC92: Confused about usage of register R5 for local variables in 'ReleaseLocals'

  end
end

Infrastructure_DetectionReportUninstallEntriesFromFolder = function(l_83_0, l_83_1)
  -- function num : 0_82
  if l_83_0 == nil or l_83_1 == nil then
    return false
  end
  local l_83_2, l_83_3, l_83_4 = Infrastructure_SplitThreatPath(l_83_1)
  if l_83_4 == nil then
    return false
  end
  if l_83_2 then
    local l_83_5 = {}
    -- DECOMPILER ERROR at PC18: No list found for R5 , SetList fails

    -- DECOMPILER ERROR at PC19: Overwrote pending register: R6 in 'AssignReg'

    -- DECOMPILER ERROR at PC21: Overwrote pending register: R7 in 'AssignReg'

    local l_83_6 = (("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\").RegExpandUserKey)("HKLM\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\")
    local l_83_7 = (sysio.RegExpandUserKey)("HKCU\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\")
    for l_83_11,l_83_12 in pairs(l_83_6) do
      (table.insert)(l_83_5, l_83_12)
    end
    for l_83_16,l_83_17 in pairs(l_83_7) do
      (table.insert)(l_83_5, l_83_17)
    end
    for l_83_21,l_83_22 in pairs(l_83_5) do
      local l_83_23 = (sysio.RegOpenKey)(l_83_22)
      if l_83_23 then
        local l_83_24 = (sysio.RegEnumKeys)(l_83_23)
        if l_83_24 then
          for l_83_28,l_83_29 in pairs(l_83_24) do
            local l_83_30 = (sysio.RegOpenKey)(l_83_22 .. l_83_29)
            if l_83_30 then
              local l_83_31 = (sysio.GetRegValueAsString)(l_83_30, "UninstallString")
              if l_83_31 then
                local l_83_32, l_83_33, l_83_34 = Infrastructure_SplitThreatPath(l_83_31:gsub("\"", ""))
                if l_83_32 and (string.lower)(l_83_32) == (string.lower)(l_83_2) then
                  (MpDetection.ReportResource)("regkey", l_83_22 .. l_83_29, l_83_0, false)
                  return true
                end
              end
            end
          end
        end
      end
    end
    -- DECOMPILER ERROR at PC117: Confused about usage of register R9 for local variables in 'ReleaseLocals'

  end
end

Infrastructure_GetRegValueAsString = function(l_84_0, l_84_1)
  -- function num : 0_83
  local l_84_2 = (sysio.RegOpenKey)(l_84_0)
  if l_84_2 then
    local l_84_3 = sysio.GetRegValueAsString
    local l_84_4 = l_84_2
    do
      local l_84_5 = l_84_1
      do return l_84_3(l_84_4, l_84_5) end
      -- DECOMPILER ERROR at PC12: Confused about usage of register R4 for local variables in 'ReleaseLocals'

      do return nil end
      -- DECOMPILER ERROR at PC14: Confused about usage of register R3 for local variables in 'ReleaseLocals'

    end
  end
end

Infrastructure_ReportRegistryKey = function(l_85_0, l_85_1)
  -- function num : 0_84
  if l_85_0 == nil or l_85_1 == nil then
    return 
  end
  local l_85_2 = (sysio.RegOpenKey)(l_85_1)
  if l_85_2 then
    (MpDetection.ReportResource)("regkey", l_85_1, l_85_0, false)
  end
end

Infrastructure_ReportRegistryValue = function(l_86_0, l_86_1, l_86_2)
  -- function num : 0_85
  if l_86_0 == nil or l_86_1 == nil or l_86_2 == nil then
    return 
  end
  local l_86_3 = (sysio.RegOpenKey)(l_86_1)
  if l_86_3 then
    local l_86_4 = (sysio.RegEnumValues)(l_86_3)
    for l_86_8,l_86_9 in pairs(l_86_4) do
      if (string.lower)(l_86_9) == (string.lower)(l_86_2) then
        (MpDetection.ReportResource)("regkeyvalue", l_86_1 .. "\\\\" .. l_86_2, l_86_0, false)
      end
    end
  end
end

Infrastructure_ReportFirstRegistryValue = function(l_87_0, l_87_1, l_87_2)
  -- function num : 0_86
  if l_87_0 == nil or l_87_1 == nil or l_87_2 == nil then
    return false
  end
  if type(l_87_2) ~= "table" then
    return false
  end
  local l_87_3 = (sysio.RegOpenKey)(l_87_1)
  if l_87_3 then
    local l_87_4 = (sysio.RegEnumValues)(l_87_3)
    if l_87_4 then
      for l_87_8,l_87_9 in pairs(l_87_4) do
        local l_87_10 = (string.lower)(l_87_9)
        for l_87_14,l_87_15 in pairs(l_87_2) do
          if l_87_10 == (string.lower)(l_87_15) then
            (MpDetection.ReportResource)("regkeyvalue", l_87_1 .. "\\\\" .. l_87_9, l_87_0, false)
            return true
          end
        end
      end
      -- DECOMPILER ERROR at PC61: Confused about usage of register R5 for local variables in 'ReleaseLocals'

    end
  end
end

Infrastructure_ReportFirstRegistryValueIfValueArrMatch = function(l_88_0, l_88_1, l_88_2, l_88_3)
  -- function num : 0_87
  if l_88_0 == nil or l_88_1 == nil or l_88_2 == nil or l_88_3 == nil then
    return false
  end
  if type(l_88_2) ~= "table" or type(l_88_3) ~= "table" then
    return false
  end
  local l_88_4 = (sysio.RegOpenKey)(l_88_1)
  if l_88_4 then
    local l_88_5 = (sysio.RegEnumValues)(l_88_4)
    if l_88_5 then
      for l_88_9,l_88_10 in pairs(l_88_5) do
        local l_88_11 = (string.lower)(l_88_10)
        for l_88_15,l_88_16 in pairs(l_88_2) do
          if l_88_11 == (string.lower)(l_88_16) then
            local l_88_17 = (sysio.GetRegValueAsDword)(l_88_4, l_88_16)
            if type(l_88_17) == "number" then
              for l_88_21,l_88_22 in pairs(l_88_3) do
                if l_88_17 == l_88_22 then
                  (MpDetection.ReportResource)("regkeyvalue", l_88_1 .. "\\\\" .. l_88_10, l_88_0, false)
                  return true
                end
              end
            end
          end
        end
      end
      -- DECOMPILER ERROR at PC86: Confused about usage of register R7 for local variables in 'ReleaseLocals'

    end
  end
end

Infrastructure_ReportFirstRegistryValueCheckDefaultDW = function(l_89_0, l_89_1, l_89_2)
  -- function num : 0_88
  if l_89_0 == nil or l_89_1 == nil or l_89_2 == nil then
    return false
  end
  if type(l_89_2) ~= "table" then
    return false
  end
  local l_89_3 = (sysio.RegOpenKey)(l_89_1)
  if l_89_3 then
    local l_89_4 = (sysio.RegEnumValues)(l_89_3)
    if l_89_4 then
      for l_89_8,l_89_9 in pairs(l_89_4) do
        local l_89_10 = (string.lower)(l_89_9)
        for l_89_14,l_89_15 in pairs(l_89_2) do
          if type(l_89_14) == "string" and type(l_89_15) == "number" and l_89_10 == (string.lower)(l_89_14) then
            local l_89_16 = (sysio.GetRegValueAsDword)(l_89_3, l_89_14)
            if type(l_89_16) == type(l_89_15) and l_89_16 ~= l_89_15 then
              (MpDetection.ReportResource)("regkeyvalue", l_89_1 .. "\\\\" .. l_89_9, l_89_0, false)
              return true
            end
          end
        end
      end
      -- DECOMPILER ERROR at PC86: Confused about usage of register R5 for local variables in 'ReleaseLocals'

    end
  end
end

Infrastructure_ReportAnyRegistryValue = function(l_90_0, l_90_1)
  -- function num : 0_89
  if l_90_0 == nil or l_90_1 == nil then
    return false
  end
  local l_90_2 = (sysio.RegOpenKey)(l_90_1)
  if l_90_2 then
    local l_90_3 = (sysio.RegEnumValues)(l_90_2)
    if l_90_3 then
      for l_90_7,l_90_8 in pairs(l_90_3) do
        (MpDetection.ReportResource)("regkeyvalue", l_90_1 .. "\\\\" .. l_90_8, l_90_0, false)
        do return true end
      end
    end
  end
end

Infrastructure_ReportRegistryKeyByValueData = function(l_91_0, l_91_1, l_91_2, l_91_3)
  -- function num : 0_90
  local l_91_4 = (sysio.RegOpenKey)(l_91_1)
  do
    if l_91_4 then
      local l_91_5 = (sysio.GetRegValueAsString)(l_91_4, l_91_2)
      if l_91_5 ~= nil and (string.lower)(l_91_5) == (string.lower)(l_91_3) then
        Infrastructure_ReportRegistryKey(l_91_0, l_91_1)
        return true
      end
    end
    return false
  end
end

Infrastructure_ReportSoftwareRegistryByKey = function(l_92_0, l_92_1)
  -- function num : 0_91
  if l_92_0 == nil or l_92_1 == nil then
    return 
  end
  Infrastructure_ReportRegistryKey(l_92_0, "HKLM\\SOFTWARE\\" .. l_92_1)
  Infrastructure_ReportRegistryKey(l_92_0, "HKLM\\SOFTWARE\\Wow6432Node\\" .. l_92_1)
  local l_92_2 = (sysio.RegExpandUserKey)("HKCU\\Software\\" .. l_92_1)
  if l_92_2 then
    for l_92_6,l_92_7 in pairs(l_92_2) do
      Infrastructure_ReportRegistryKey(l_92_0, l_92_7)
    end
  end
end

Infrastructure_ReportUninstallRegistryByKey = function(l_93_0, l_93_1)
  -- function num : 0_92
  Infrastructure_ReportRegistryKey(l_93_0, "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\" .. l_93_1)
  Infrastructure_ReportRegistryKey(l_93_0, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\" .. l_93_1)
end

Infrastructure_Report_Clsid_And_TypeLib = function(l_94_0, l_94_1, l_94_2)
  -- function num : 0_93
  local l_94_3 = Infrastructure_GetRegValueAsString(l_94_1 .. "\\CLSID\\" .. l_94_2 .. "\\TypeLib", "")
  if l_94_3 ~= nil then
    if (string.len)(l_94_3) == 38 and (string.match)(l_94_3, "{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}") then
      Infrastructure_ReportRegistryKey(l_94_0, l_94_1 .. "\\TypeLib\\" .. l_94_3)
    end
    Infrastructure_ReportRegistryKey(l_94_0, l_94_1 .. "\\CLSID\\" .. l_94_2)
  end
end

Infrastructure_ReportCLSID = function(l_95_0, l_95_1)
  -- function num : 0_94
  if l_95_1 ~= nil and (string.len)(l_95_1) == 38 and (string.match)(l_95_1, "{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}") then
    Infrastructure_Report_Clsid_And_TypeLib(l_95_0, "HKLM\\SOFTWARE\\Classes", l_95_1)
    Infrastructure_Report_Clsid_And_TypeLib(l_95_0, "HKLM\\SOFTWARE\\Wow6432Node\\Classes", l_95_1)
    Infrastructure_ReportRegistryKey(l_95_0, "HKCR\\CLSID\\" .. l_95_1)
  end
end

Infrastructure_ReportIEExtensionsByClsid = function(l_96_0, l_96_1)
  -- function num : 0_95
  if l_96_1 == nil then
    return 
  end
  Infrastructure_ReportRegistryValue(l_96_0, "HKLM\\SOFTWARE\\Microsoft\\Internet Explorer\\Approved Extensions", l_96_1)
  local l_96_2 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Internet Explorer\\Approved Extensions")
  if l_96_2 then
    for l_96_6,l_96_7 in pairs(l_96_2) do
      Infrastructure_ReportRegistryValue(l_96_0, l_96_7, l_96_1)
    end
  end
  do
    Infrastructure_ReportRegistryValue(l_96_0, "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Ext\\CLSID", l_96_1)
    local l_96_8 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Ext\\CLSID")
    if l_96_8 then
      for l_96_12,l_96_13 in pairs(l_96_8) do
        Infrastructure_ReportRegistryValue(l_96_0, l_96_13, l_96_1)
      end
    end
    do
      Infrastructure_ReportRegistryKey(l_96_0, "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Ext\\PreApproved\\" .. l_96_1)
      local l_96_14 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Ext\\PreApproved\\" .. l_96_1)
      if l_96_14 then
        for l_96_18,l_96_19 in pairs(l_96_14) do
          Infrastructure_ReportRegistryKey(l_96_0, l_96_19)
        end
      end
      do
        Infrastructure_ReportRegistryKey(l_96_0, "HKLM\\SOFTWARE\\Microsoft\\Internet Explorer\\ApprovedExtensionsMigration\\" .. l_96_1)
        local l_96_20 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Internet Explorer\\ApprovedExtensionsMigration\\" .. l_96_1)
        if l_96_20 then
          for l_96_24,l_96_25 in pairs(l_96_20) do
            Infrastructure_ReportRegistryKey(l_96_0, l_96_25)
          end
        end
      end
    end
  end
end

Infrastructure_ReportBHOByName_RegPath = function(l_97_0, l_97_1, l_97_2)
  -- function num : 0_96
  local l_97_3 = (sysio.RegOpenKey)(l_97_2)
  if l_97_3 then
    local l_97_4 = (sysio.RegEnumKeys)(l_97_3)
    if l_97_4 then
      for l_97_8,l_97_9 in pairs(l_97_4) do
        if Infrastructure_ReportRegistryKeyByValueData(l_97_0, l_97_2 .. "\\" .. l_97_9, "", l_97_1) then
          Infrastructure_ReportCLSID(l_97_0, l_97_9)
          Infrastructure_ReportIEExtensionsByClsid(l_97_0, l_97_9)
        end
      end
    end
  end
end

Infrastructure_ReportBHOByName = function(l_98_0, l_98_1)
  -- function num : 0_97
  Infrastructure_ReportBHOByName_RegPath(l_98_0, l_98_1, "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects")
  Infrastructure_ReportBHOByName_RegPath(l_98_0, l_98_1, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects")
  local l_98_2 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects")
  if l_98_2 then
    for l_98_6,l_98_7 in pairs(l_98_2) do
      Infrastructure_ReportBHOByName_RegPath(l_98_0, l_98_1, l_98_7)
    end
  end
  do
    local l_98_8 = (sysio.RegExpandUserKey)("HKCU\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects")
    if l_98_8 then
      for l_98_12,l_98_13 in pairs(l_98_8) do
        Infrastructure_ReportBHOByName_RegPath(l_98_0, l_98_1, l_98_13)
      end
    end
  end
end

Infrastructure_DetectionReportBHOByCLSID = function(l_99_0, l_99_1)
  -- function num : 0_98
  if l_99_1 ~= nil and l_99_0 ~= nil and (string.len)(l_99_1) == 38 and (string.match)(l_99_1, "{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}") then
    Infrastructure_ReportRegistryKey(l_99_0, "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects" .. l_99_1)
    Infrastructure_ReportRegistryKey(l_99_0, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects" .. l_99_1)
    local l_99_2 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects\\" .. l_99_1)
    if l_99_2 then
      for l_99_6,l_99_7 in pairs(l_99_2) do
        Infrastructure_ReportRegistryKey(l_99_0, l_99_7)
      end
    end
    do
      local l_99_8 = (sysio.RegExpandUserKey)("HKCU\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects\\" .. l_99_1)
      if l_99_8 then
        for l_99_12,l_99_13 in pairs(l_99_8) do
          Infrastructure_ReportRegistryKey(l_99_0, l_99_13)
        end
      end
    end
  end
end

Infrastructure_DetectionReportUninstallRegKey = function(l_100_0, l_100_1)
  -- function num : 0_99
  if l_100_1 ~= nil and l_100_0 ~= nil then
    Infrastructure_ReportRegistryKey(l_100_0, "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\" .. l_100_1)
    Infrastructure_ReportRegistryKey(l_100_0, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\" .. l_100_1)
    local l_100_2 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\" .. l_100_1)
    if l_100_2 then
      for l_100_6,l_100_7 in pairs(l_100_2) do
        Infrastructure_ReportRegistryKey(l_100_0, l_100_7)
      end
    end
    do
      local l_100_8 = (sysio.RegExpandUserKey)("HKCU\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\" .. l_100_1)
      if l_100_8 then
        for l_100_12,l_100_13 in pairs(l_100_8) do
          Infrastructure_ReportRegistryKey(l_100_0, l_100_13)
        end
      end
    end
  end
end

Infrastructure_ScanTaskschedulerResources = function()
  -- function num : 0_100
  local l_101_0 = "%SystemRoot%\\Tasks"
  local l_101_1 = "%SystemRoot%\\System32\\Tasks"
  ;
  (MpDetection.ScanResource)("specialfolder://norecursive:taskscheduler:" .. l_101_0)
  ;
  (MpDetection.ScanResource)("specialfolder://recursive:taskscheduler:" .. l_101_1)
  local l_101_2 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\SchedulingAgent")
  if not l_101_2 then
    return false
  end
  local l_101_3 = (sysio.GetRegValueAsString)(l_101_2, "TasksFolder")
  if l_101_3 and l_101_3 ~= l_101_0 and l_101_3 ~= l_101_1 then
    if Info.OSMajorVersion < 6 then
      (MpDetection.ScanResource)("specialfolder://norecursive:taskscheduler:" .. l_101_3)
    else
      ;
      (MpDetection.ScanResource)("specialfolder://recursive:taskscheduler:" .. l_101_3)
    end
  end
end

Infrastructure_HKCUExpandSpecialPath = function(l_102_0)
  -- function num : 0_101
  local l_102_1 = {}
  if l_102_0 then
    local l_102_2 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Shell Folders")
    local l_102_3 = {}
    if l_102_2 then
      for l_102_7,l_102_8 in pairs(l_102_2) do
        local l_102_9 = (sysio.RegOpenKey)(l_102_8)
        if l_102_9 then
          local l_102_10 = (sysio.GetRegValueAsString)(l_102_9, l_102_0)
          if l_102_10 and not l_102_3[l_102_10] then
            (table.insert)(l_102_1, l_102_10)
            l_102_3[l_102_10] = true
          end
        end
      end
    end
  end
  do
    return l_102_1
  end
end

Infrastructure_FixHostsFile = function()
  -- function num : 0_102
  if Info.OSMajorVersion == nil or Info.OSMinorVersion == nil then
    return false
  end
  local l_103_0 = (MpCommon.ExpandEnvironmentVariables)("%windir%")
  local l_103_1 = l_103_0 .. "\\System32\\drivers\\etc\\hosts"
  local l_103_2 = "# Copyright (c) 1993-2006 Microsoft Corp." .. "\r\n" .. "#" .. "\r\n" .. "# This is a sample HOSTS file used by Microsoft TCP/IP for Windows." .. "\r\n" .. "#" .. "\r\n" .. "# This file contains the mappings of IP addresses to host names. Each" .. "\r\n" .. "# entry should be kept on an individual line. The IP address should" .. "\r\n" .. "# be placed in the first column followed by the corresponding host name." .. "\r\n" .. "# The IP address and the host name should be separated by at least one" .. "\r\n" .. "# space." .. "\r\n" .. "#" .. "\r\n" .. "# Additionally, comments (such as these) may be inserted on individual" .. "\r\n" .. "# lines or following the machine name denoted by a \'#\' symbol." .. "\r\n" .. "#" .. "\r\n" .. "# For example:" .. "\r\n" .. "#" .. "\r\n" .. "#      102.54.94.97     rhino.acme.com          # source server" .. "\r\n" .. "#       38.25.63.10     x.acme.com              # x client host" .. "\r\n" .. "# localhost name resolution is handle within DNS itself." .. "\r\n" .. "#       127.0.0.1       localhost" .. "\r\n" .. "#       ::1             localhost" .. "\r\n"
  local l_103_3 = "# Copyright (c) 1993-2006 Microsoft Corp." .. "\r\n" .. "#" .. "\r\n" .. "# This is a sample HOSTS file used by Microsoft TCP/IP for Windows." .. "\r\n" .. "#" .. "\r\n" .. "# This file contains the mappings of IP addresses to host names. Each" .. "\r\n" .. "# entry should be kept on an individual line. The IP address should" .. "\r\n" .. "# be placed in the first column followed by the corresponding host name." .. "\r\n" .. "# The IP address and the host name should be separated by at least one" .. "\r\n" .. "# space." .. "\r\n" .. "#" .. "\r\n" .. "# Additionally, comments (such as these) may be inserted on individual" .. "\r\n" .. "# lines or following the machine name denoted by a \'#\' symbol." .. "\r\n" .. "#" .. "\r\n" .. "# For example:" .. "\r\n" .. "#" .. "\r\n" .. "#      102.54.94.97     rhino.acme.com          # source server" .. "\r\n" .. "#       38.25.63.10     x.acme.com              # x client host" .. "\r\n" .. "" .. "\r\n" .. "# localhost name resolution is handle within DNS itself." .. "\r\n" .. "#       127.0.0.1       localhost" .. "\r\n" .. "#       ::1             localhost" .. "\r\n"
  local l_103_4 = "# Copyright (c) 1993-2006 Microsoft Corp." .. "\r\n" .. "#" .. "\r\n" .. "# This is a sample HOSTS file used by Microsoft TCP/IP for Windows." .. "\r\n" .. "#" .. "\r\n" .. "# This file contains the mappings of IP addresses to host names. Each" .. "\r\n" .. "# entry should be kept on an individual line. The IP address should" .. "\r\n" .. "# be placed in the first column followed by the corresponding host name." .. "\r\n" .. "# The IP address and the host name should be separated by at least one" .. "\r\n" .. "# space." .. "\r\n" .. "#" .. "\r\n" .. "# Additionally, comments (such as these) may be inserted on individual" .. "\r\n" .. "# lines or following the machine name denoted by a \'#\' symbol." .. "\r\n" .. "#" .. "\r\n" .. "# For example:" .. "\r\n" .. "#" .. "\r\n" .. "#      102.54.94.97     rhino.acme.com          # source server" .. "\r\n" .. "#       38.25.63.10     x.acme.com              # x client host" .. "\r\n" .. "" .. "\r\n" .. "127.0.0.1       localhost" .. "\r\n" .. "::1             localhost" .. "\r\n"
  local l_103_5 = "# Copyright (c) 1993-1999 Microsoft Corp." .. "\r\n" .. "#" .. "\r\n" .. "# This is a sample HOSTS file used by Microsoft TCP/IP for Windows." .. "\r\n" .. "#" .. "\r\n" .. "# This file contains the mappings of IP addresses to host names. Each" .. "\r\n" .. "# entry should be kept on an individual line. The IP address should" .. "\r\n" .. "# be placed in the first column followed by the corresponding host name." .. "\r\n" .. "# The IP address and the host name should be separated by at least one" .. "\r\n" .. "# space." .. "\r\n" .. "#" .. "\r\n" .. "# Additionally, comments (such as these) may be inserted on individual" .. "\r\n" .. "# lines or following the machine name denoted by a \'#\' symbol." .. "\r\n" .. "#" .. "\r\n" .. "# For example:" .. "\r\n" .. "#" .. "\r\n" .. "#      102.54.94.97     rhino.acme.com          # source server" .. "\r\n" .. "#       38.25.63.10     x.acme.com              # x client host" .. "\r\n" .. "" .. "\r\n" .. "127.0.0.1       localhost" .. "\r\n"
  if (sysio.IsFileExists)(l_103_1) == false then
    return false
  end
  local l_103_6 = (sysio.GetFileSize)(l_103_1)
  if l_103_6 == nil then
    return false
  end
  while 1 do
    if Info.OSMajorVersion < 6 then
      if (string.len)(l_103_5) < l_103_6 then
        l_103_5 = l_103_5 .. "\r\n"
        -- DECOMPILER ERROR at PC211: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC211: LeaveBlock: unexpected jumping out IF_STMT

        -- DECOMPILER ERROR at PC211: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC211: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  if (sysio.WriteFile)(l_103_1, 0, l_103_5) ~= (string.len)(l_103_5) then
    return false
  else
    return true
  end
  -- DECOMPILER ERROR at PC229: Overwrote pending register: R7 in 'AssignReg'

  while 1 do
    if ((string.len)(l_103_5) + 2).OSMajorVersion == 6 and Info.OSMinorVersion == 0 then
      if (string.len)(l_103_4) < l_103_6 then
        l_103_4 = l_103_4 .. "\r\n"
        -- DECOMPILER ERROR at PC247: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC247: LeaveBlock: unexpected jumping out IF_STMT

        -- DECOMPILER ERROR at PC247: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC247: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  if (sysio.WriteFile)(l_103_1, 0, l_103_4) ~= (string.len)(l_103_4) then
    return false
  else
    return true
  end
  -- DECOMPILER ERROR at PC265: Overwrote pending register: R7 in 'AssignReg'

  while 1 do
    if ((string.len)(l_103_4) + 2).OSMajorVersion == 6 and Info.OSMinorVersion == 1 then
      if (string.len)(l_103_3) < l_103_6 then
        l_103_3 = l_103_3 .. "\r\n"
        -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

        -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  if (sysio.WriteFile)(l_103_1, 0, l_103_3) ~= (string.len)(l_103_3) then
    return false
  else
    return true
  end
  -- DECOMPILER ERROR at PC301: Overwrote pending register: R7 in 'AssignReg'

  while 1 do
    if (((string.len)(l_103_3) + 2).OSMajorVersion == 6 and Info.OSMinorVersion == 2) or Info.OSMajorVersion > 6 then
      if (string.len)(l_103_2) < l_103_6 then
        l_103_2 = l_103_2 .. "\r\n"
        -- DECOMPILER ERROR at PC323: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC323: LeaveBlock: unexpected jumping out IF_STMT

        -- DECOMPILER ERROR at PC323: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC323: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  if (sysio.WriteFile)(l_103_1, 0, l_103_2) ~= (string.len)(l_103_2) then
    return false
  else
    return true
  end
  return false
end

Infrastructure_ReportRegistryAppId = function(l_104_0, l_104_1)
  -- function num : 0_103
  if l_104_0 == nil or l_104_1 == nil then
    return false
  end
  local l_104_2 = {}
  -- DECOMPILER ERROR at PC9: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC10: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC11: Overwrote pending register: R4 in 'AssignReg'

  for l_104_6,l_104_7 in ("HKLM\\SOFTWARE\\Classes\\AppID\\")("HKLM\\SOFTWARE\\Classes\\WOW6432Node\\AppID\\") do
    local l_104_8 = (sysio.RegOpenKey)(l_104_7)
    if l_104_8 then
      local l_104_9 = (sysio.RegEnumKeys)(l_104_8)
      if l_104_9 then
        for l_104_13,l_104_14 in pairs(l_104_9) do
          if l_104_14 == l_104_1 then
            (MpDetection.ReportResource)("regkey", l_104_7 .. l_104_14, l_104_0, false)
            local l_104_15 = (sysio.RegOpenKey)(l_104_7 .. l_104_14)
            if l_104_15 then
              local l_104_16 = (sysio.GetRegValueAsString)(l_104_15, "AppId")
              if l_104_16 then
                (MpDetection.ReportResource)("regkey", l_104_7 .. l_104_16, l_104_0, false)
              end
            end
          end
        end
      end
    end
  end
  -- DECOMPILER ERROR at PC69: Confused about usage of register R4 for local variables in 'ReleaseLocals'

end

Infrastructure_RestoreRegValueDataFromAnotherRegValueAsString = function(l_105_0, l_105_1, l_105_2, l_105_3)
  -- function num : 0_104
  if l_105_0 == nil or l_105_2 == l_105_1 or l_105_3 ~= true and l_105_3 ~= false then
    return 
  end
  local l_105_4 = (sysio.RegOpenKey)(l_105_0)
  if l_105_4 then
    local l_105_5 = (sysio.GetRegValueAsString)(l_105_4, l_105_2)
    if l_105_5 ~= nil then
      (sysio.SetRegValueAsString)(l_105_4, l_105_1, l_105_5)
      if l_105_3 == true then
        (sysio.DeleteRegValue)(l_105_4, l_105_2)
      end
    end
  end
end

Infrastructure_ReportImageFileDebugger = function(l_106_0, l_106_1)
  -- function num : 0_105
  if l_106_0 == nil or l_106_1 == nil then
    return 
  end
  Infrastructure_ReportRegistryValue(l_106_0, "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. l_106_1, "Debugger")
  Infrastructure_ReportRegistryValue(l_106_0, "HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. l_106_1, "Debugger")
end

Infrastructure_CleanBrowserShellOpenCommandParameter = function()
  -- function num : 0_106
  Infrastructure_CleanBrowserShellOpenCommandParameter_SearchString("HKLM\\SOFTWARE\\Clients\\StartMenuInternet\\IEXPLORE.EXE\\shell\\open\\command", "\\Internet Explorer\\iexplore.exe")
  Infrastructure_CleanBrowserShellOpenCommandParameter_SearchString("HKLM\\SOFTWARE\\Wow6432Node\\Clients\\StartMenuInternet\\IEXPLORE.EXE\\shell\\open\\command", "\\Internet Explorer\\iexplore.exe")
end

Infrastructure_CleanBrowserShellOpenCommandParameter_SearchString = function(l_108_0, l_108_1)
  -- function num : 0_107
  if l_108_0 == nil or l_108_1 == nil then
    return 
  end
  local l_108_2 = (sysio.RegOpenKey)(l_108_0)
  if l_108_2 ~= nil then
    local l_108_3 = (sysio.GetRegValueAsString)(l_108_2, "")
    if l_108_3 ~= nil then
      local l_108_4, l_108_5 = (string.find)((string.lower)(l_108_3), (string.lower)(l_108_1), 1, true)
      if l_108_4 ~= nil and l_108_5 ~= nil and l_108_5 < (string.len)(l_108_3) then
        (sysio.SetRegValueAsString)(l_108_2, "", (string.sub)(l_108_3, 1, l_108_5))
      end
    end
  end
end

Infrastructure_CleanImageFileDebugger = function(l_109_0)
  -- function num : 0_108
  if l_109_0 == nil then
    return 
  end
  Infrastructure_CleanImageFileDebugger_Regkey("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. l_109_0)
  Infrastructure_CleanImageFileDebugger_Regkey("HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. l_109_0)
end

Infrastructure_CleanImageFileDebugger_Regkey = function(l_110_0)
  -- function num : 0_109
  if l_110_0 == nil then
    return 
  end
  local l_110_1 = (sysio.RegOpenKey)(l_110_0)
  if l_110_1 then
    (sysio.DeleteRegValue)(l_110_1, "Debugger")
  end
end

Infrastructure_ReportAll_RegistryValueFromRegistryKey = function(l_111_0, l_111_1)
  -- function num : 0_110
  if l_111_1 == nil then
    return 
  end
  local l_111_2 = (sysio.RegOpenKey)(l_111_1)
  if l_111_2 then
    local l_111_3 = (sysio.RegEnumValues)(l_111_2)
    for l_111_7,l_111_8 in pairs(l_111_3) do
      (MpDetection.ReportResource)("regkeyvalue", l_111_1 .. "\\\\" .. l_111_8, l_111_0, false)
    end
  end
end

Infrastructure_ReportProductExcludedPathsInGroupPolicy = function(l_112_0)
  -- function num : 0_111
  Infrastructure_ReportAll_RegistryValueFromRegistryKey(l_112_0, "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
  Infrastructure_ReportAll_RegistryValueFromRegistryKey(l_112_0, "HKLM\\SOFTWARE\\Policies\\Microsoft\\Microsoft Antimalware\\Exclusions\\Paths")
end

Infrastructure_DeleteAll_RegistryValueFromRegistryKey = function(l_113_0)
  -- function num : 0_112
  if l_113_0 == nil then
    return 
  end
  local l_113_1 = (sysio.RegOpenKey)(l_113_0)
  if l_113_1 then
    local l_113_2 = (sysio.RegEnumValues)(l_113_1)
    for l_113_6,l_113_7 in pairs(l_113_2) do
      (sysio.DeleteRegValue)(l_113_1, l_113_7)
    end
  end
end

Infrastructure_DeleteProductExcludedPathsInGroupPolicy = function()
  -- function num : 0_113
  Infrastructure_DeleteAll_RegistryValueFromRegistryKey("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
  Infrastructure_DeleteAll_RegistryValueFromRegistryKey("HKLM\\SOFTWARE\\Policies\\Microsoft\\Microsoft Antimalware\\Exclusions\\Paths")
end

Infrastructure_RestrictNTLMTraffic = function()
  -- function num : 0_114
  local l_115_0 = (sysio.RegOpenKey)("HKLM\\SYSTEM\\CurrentControlSet\\Control\\Lsa\\MSV1_0")
  if l_115_0 then
    (sysio.SetRegValueAsDword)(l_115_0, "restrictsendingntlmtraffic", 1)
  end
end

Infrastructure_ReportScheduleTaskByTaskId = function(l_116_0, l_116_1)
  -- function num : 0_115
  if (string.len)(l_116_0) == 38 and (string.match)(l_116_0, "{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}") then
    local l_116_2 = "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Schedule\\Taskcache\\Tasks\\" .. l_116_0
    local l_116_3 = (sysio.RegOpenKey)(l_116_2)
    if l_116_3 then
      local l_116_4 = (sysio.GetRegValueAsString)(l_116_3, "Path")
      if l_116_4 ~= nil and (string.sub)(l_116_4, 1, 1) == "\\" then
        l_116_4 = (string.sub)(l_116_4, 2)
        local l_116_5 = (MpCommon.ExpandEnvironmentVariables)("%windir%")
        if (sysio.IsFileExists)(l_116_5 .. "\\Tasks\\" .. l_116_4 .. ".job") then
          (MpDetection.ReportResource)("taskscheduler", l_116_5 .. "\\Tasks\\" .. l_116_4 .. ".job", l_116_1, false)
        end
        if (sysio.IsFileExists)(l_116_5 .. "\\System32\\Tasks\\" .. l_116_4) then
          (MpDetection.ReportResource)("taskscheduler", l_116_5 .. "\\System32\\Tasks\\" .. l_116_4, l_116_1, false)
        end
      end
    end
  end
end

Infrastructure_DeleteRegistryEntriesOnValueMatch = function(l_117_0, l_117_1)
  -- function num : 0_116
  if l_117_0 == nil then
    return 
  end
  local l_117_2 = (sysio.RegEnumValues)(l_117_0)
  if l_117_2 == nil then
    return 
  end
  for l_117_6,l_117_7 in pairs(l_117_2) do
    if l_117_7 ~= nil then
      l_117_7 = (string.lower)(l_117_7)
      for l_117_11,l_117_12 in pairs(l_117_1) do
        l_117_12 = (string.lower)(l_117_12)
        if l_117_7 == l_117_12 then
          (sysio.DeleteRegValue)(l_117_0, l_117_7)
        end
      end
    end
  end
end

Infrastructure_DelRegKeyValuesIfExist = function(l_118_0, l_118_1)
  -- function num : 0_117
  if l_118_0 == nil or l_118_1 == nil then
    return 
  end
  local l_118_2 = (sysio.RegOpenKey)(l_118_0)
  if l_118_2 then
    do
      if type(l_118_1) == "string" then
        local l_118_3 = {}
        -- DECOMPILER ERROR at PC18: No list found for R3 , SetList fails

      end
      -- DECOMPILER ERROR at PC21: Overwrote pending register: R4 in 'AssignReg'

      if type(l_118_1) ~= "table" then
        return 
      end
      Infrastructure_DeleteRegistryEntriesOnValueMatch(l_118_2, l_118_1)
    end
  end
end

Infrastructure_RemoveDefenderDAVASPolicyKey = function()
  -- function num : 0_118
  local l_119_0 = {}
  -- DECOMPILER ERROR at PC3: No list found for R0 , SetList fails

  -- DECOMPILER ERROR at PC4: Overwrote pending register: R1 in 'AssignReg'

  local l_119_1 = "disableantivirus"
  -- DECOMPILER ERROR at PC5: Overwrote pending register: R2 in 'AssignReg'

  local l_119_2 = (("disableantispyware").RegOpenKey)(l_119_1)
  Infrastructure_DeleteRegistryEntriesOnValueMatch(l_119_2, l_119_0)
end

Infrastructure_RemoveDefenderDAVASPrefKey = function()
  -- function num : 0_119
  local l_120_0 = {}
  -- DECOMPILER ERROR at PC3: No list found for R0 , SetList fails

  -- DECOMPILER ERROR at PC4: Overwrote pending register: R1 in 'AssignReg'

  local l_120_1 = "disableantivirus"
  -- DECOMPILER ERROR at PC5: Overwrote pending register: R2 in 'AssignReg'

  local l_120_2 = (("disableantispyware").RegOpenKey)(l_120_1)
  Infrastructure_DeleteRegistryEntriesOnValueMatch(l_120_2, l_120_0)
end

Infrastructure_IsE5 = function()
  -- function num : 0_120
  local l_121_0 = 0
  do
    local l_121_1 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features")
    if l_121_1 then
      l_121_0 = (sysio.GetRegValueAsDword)(l_121_1, "SenseEnabled")
    end
    do return l_121_0 == 1 end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end

Infrastructure_IsE3 = function()
  -- function num : 0_121
  local l_122_0 = 0
  do
    local l_122_1 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender")
    if l_122_1 then
      l_122_0 = (sysio.GetRegValueAsDword)(l_122_1, "ManagedDefenderProductType")
    end
    do return l_122_0 ~= nil and l_122_0 ~= 0 end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end

Infrastructure_HasPartnerGuid = function(l_123_0)
  -- function num : 0_122
  if l_123_0 == nil then
    return false
  end
  local l_123_1 = nil
  do
    local l_123_2 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender")
    if l_123_2 then
      l_123_1 = (sysio.GetRegValueAsString)(l_123_2, "PartnerGuid")
      if l_123_1 then
        if #l_123_1 > 36 then
          l_123_1 = (string.gsub)(l_123_1, "^%s*(.-)%s*$", "%1")
        end
        l_123_1 = (string.lower)(l_123_1)
      end
    end
    if #l_123_0 > 36 then
      l_123_0 = (string.gsub)(l_123_0, "^%s*(.-)%s*$", "%1")
    end
    l_123_0 = (string.lower)(l_123_0)
    do return l_123_1 ~= nil and l_123_1 == l_123_0 end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end

Infrastructure_HasAnyPartnerGuid = function(l_124_0)
  -- function num : 0_123
  if l_124_0 == nil or type(l_124_0) ~= "table" then
    return false
  end
  for l_124_4,l_124_5 in ipairs(l_124_0) do
    if Infrastructure_HasPartnerGuid(l_124_5) then
      return true
    end
  end
  return false
end


