-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Sirefef\0x00001281_luac 

-- params : ...
-- function num : 0
CheckRepairSubsystem = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = "HKLM\\SYSTEM\\" .. l_1_0 .. "\\Control\\Session Manager\\Subsystems"
  local l_1_2 = (sysio.RegOpenKey)(l_1_1)
  if not l_1_2 then
    return false
  end
  local l_1_3 = (sysio.GetRegValueAsString)(l_1_2, "Windows")
  if not l_1_3 then
    return false
  end
  if (string.match)(l_1_3, "consrv:") then
    local l_1_4 = (string.gsub)(l_1_3, "consrv:", "winsrv:")
    ;
    (Remediation.BtrSetRegValueStringExpand)(l_1_1 .. "\\\\Windows", l_1_4)
    return true
  else
    do
      do return false end
    end
  end
end

RepairServiceAtPath = function(l_2_0, l_2_1, l_2_2)
  -- function num : 0_1
  if not l_2_2 then
    l_2_2 = l_2_0
  end
  local l_2_3 = true
  local l_2_4 = "HKLM\\SYSTEM\\" .. l_2_1 .. "\\services\\" .. l_2_0
  local l_2_5 = (sysio.RegOpenKey)(l_2_4)
  if l_2_5 then
    if (sysio.GetRegValueAsString)(l_2_5, "Type") then
      l_2_3 = false
    end
    if (sysio.GetRegValueAsString)(l_2_5, "DeleteFlag") then
      l_2_3 = true
    end
  end
  if l_2_3 then
    (Remediation.DefaultSpecialRegistry)("HKLM\\SYSTEM\\CurrentControlSet\\services\\" .. l_2_2, l_2_4)
  end
  if l_2_3 and (sysio.RegOpenKey)(l_2_4) then
    return true
  else
    return false
  end
end

IdentifyAmDefaultsPath = function()
  -- function num : 0_2
  local l_3_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Microsoft Antimalware")
  if not l_3_0 then
    return 
  end
  local l_3_1 = (sysio.GetRegValueAsString)(l_3_0, "InstallLocation")
  if not l_3_1 then
    return 
  end
  if not (string.match)(l_3_1, "\\$") then
    l_3_1 = l_3_1 .. "\\"
  end
  return "MsMpSvc_Camp", l_3_1
end

ReplaceAmDefaultsPath = function(l_4_0, l_4_1, l_4_2)
  -- function num : 0_3
  local l_4_3 = (sysio.RegOpenKey)(l_4_0)
  if l_4_3 then
    local l_4_4 = (sysio.GetRegValueAsString)(l_4_3, l_4_1)
    if l_4_4 then
      l_4_4 = (string.gsub)(l_4_4, "%*IP%*", l_4_2)
      ;
      (sysio.SetRegValueAsString)(l_4_3, l_4_1, l_4_4)
    end
  end
end

RepairServices = function()
  -- function num : 0_4
  local l_5_0 = false
  local l_5_1, l_5_2 = nil, nil
  l_5_1 = IdentifyAmDefaultsPath()
  local l_5_3 = true
  if Info.OSType and Info.OSType == "Server" then
    l_5_3 = false
  end
  local l_5_4 = (sysio.RegOpenKey)("HKLM\\SYSTEM")
  if l_5_4 then
    local l_5_5 = (sysio.RegEnumKeys)(l_5_4)
    if l_5_5 then
      for l_5_9,l_5_10 in pairs(l_5_5) do
        -- DECOMPILER ERROR at PC117: Unhandled construct in 'MakeBoolean' P3

        if (((((((((((((((((not (string.match)(l_5_10, "ControlSet%d%d%d") or (not RepairServiceAtPath("SharedAccess", l_5_10)) and RepairServiceAtPath("IpHlpSvc", l_5_10))) or not RepairServiceAtPath("MpsSvc", l_5_10))) and RepairServiceAtPath("BFE", l_5_10))) or not RepairServiceAtPath("wuauserv", l_5_10))) and RepairServiceAtPath("BITS", l_5_10))) or not RepairServiceAtPath("PolicyAgent", l_5_10))) and RepairServiceAtPath("PcaSvc", l_5_10))) or l_5_3) and RepairServiceAtPath("wscsvc", l_5_10)) or l_5_1) and (not RepairServiceAtPath("MsMpSvc", l_5_10, l_5_1)) then
          ReplaceAmDefaultsPath("HKLM\\SYSTEM\\" .. l_5_10 .. "\\services\\MsMpSvc", "ImagePath", l_5_2)
          ReplaceAmDefaultsPath("HKLM\\SYSTEM\\" .. l_5_10 .. "\\services\\MsMpSvc", "Description", l_5_2)
        end
      end
    end
  end
  do
    if (not (Remediation.Threat).Offline and CheckRepairSubsystem(l_5_10)) or l_5_1 then
      l_5_5 = Remediation
      l_5_5 = l_5_5.DefaultSpecialRegistry
      l_5_5("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Run\\\\MSC")
      l_5_5 = ReplaceAmDefaultsPath
      l_5_5("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Run", "MSC", l_5_2)
    else
      l_5_5 = Remediation
      l_5_5 = l_5_5.DefaultSpecialRegistry
      l_5_5("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Run\\\\Windows Defender")
    end
    if l_5_0 then
      l_5_5 = Remediation
      l_5_5 = l_5_5.SetRebootRequired
      l_5_5()
    end
  end
end

FilesRepairNeeded = function(l_6_0)
  -- function num : 0_5
  if not (sysio.IsFolderExists)(l_6_0) then
    return false
  end
  local l_6_1 = (sysio.GetFsOwnerSidString)(l_6_0 .. "\\MpSvc.dll")
  if not l_6_1 then
    return false
  end
  if l_6_1 ~= "S-1-5-18" then
    return false
  end
  return true
end

ResetOwnershipAndPermissions = function(l_7_0, l_7_1)
  -- function num : 0_6
  if (Info.OSMajorVersion == 5 and Info.OSMinorVersion >= 1) or l_7_1 == false then
    (sysio.ApplyFsSddl)(l_7_0, "O:BAD:(A;;0x1200a9;;;BU)(A;;FA;;;SY)(A;;FA;;;BA)", true, true)
  else
    if Info.OSMajorVersion == 6 and l_7_1 == true then
      if Info.OSMinorVersion >= 2 and Info.OSMinorVersion <= 3 then
        (sysio.ApplyFsSddl)(l_7_0, "O:S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464D:PAI(A;;FA;;;S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464)(A;;0x1200a9;;;BA)(A;;0x1200a9;;;SY)(A;;0x1200a9;;;BU)(A;;0x1200a9;;;AC)", true, true)
      else
        ;
        (sysio.ApplyFsSddl)(l_7_0, "O:S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464D:PAI(A;;FA;;;S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464)(A;;0x1200a9;;;BA)(A;;0x1200a9;;;SY)(A;;0x1200a9;;;BU)", true, true)
      end
    end
  end
end

RepairFoldersAndFiles = function()
  -- function num : 0_7
  local l_8_0 = (MpCommon.ExpandEnvironmentVariables)("%ProgramFiles%")
  if not l_8_0 then
    return 
  end
  local l_8_1 = l_8_0 .. "\\Windows Defender"
  local l_8_2 = l_8_0 .. "\\Microsoft Security Client"
  if FilesRepairNeeded(l_8_1) then
    (sysio.DeleteReparsePoints)(l_8_1, -1)
    local l_8_3 = (sysio.GetLastResult)()
    if not l_8_3.Success and l_8_3.Code == 32 and not Info.Offline then
      (Remediation.SetCallistoRequired)()
    else
      ResetOwnershipAndPermissions(l_8_1, true)
    end
  end
  do
    if FilesRepairNeeded(l_8_2) then
      (sysio.DeleteReparsePoints)(l_8_2, -1)
      local l_8_4 = (sysio.GetLastResult)()
      if not l_8_4.Success and l_8_4.Code == 32 and not Info.Offline then
        (Remediation.SetCallistoRequired)()
      else
        ResetOwnershipAndPermissions(l_8_2, false)
      end
    end
  end
end

if (Remediation.Threat).Active then
  RepairServices()
end
if Info.EngineVersion >= 75184 then
  RepairFoldersAndFiles()
end

