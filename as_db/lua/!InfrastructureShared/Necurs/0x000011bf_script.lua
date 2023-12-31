-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Necurs\0x000011bf_luac 

-- params : ...
-- function num : 0
NecursServiceRepair = function()
  -- function num : 0_0
  local l_1_0 = nil
  local l_1_1 = nil
  for l_1_5,l_1_6 in pairs((sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run")) do
    local l_1_2 = nil
    -- DECOMPILER ERROR at PC10: Confused about usage of register: R6 in 'UnsetPending'

    if (sysio.RegOpenKey)(R6_PC10) then
      l_1_1 = (sysio.GetRegValueAsString)((sysio.RegOpenKey)(R6_PC10), "syshost32")
      if l_1_1 then
        do
          do
            (sysio.DeleteRegValue)((sysio.RegOpenKey)(R6_PC10), "syshost32")
            do break end
            -- DECOMPILER ERROR at PC28: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC28: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC28: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC28: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC28: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
  local l_1_8 = nil
  if (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Run") then
    l_1_1 = (sysio.GetRegValueAsString)((sysio.RegOpenKey)("HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Run"), "syshost32")
    if l_1_1 then
      (sysio.DeleteRegValue)((sysio.RegOpenKey)("HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Run"), "syshost32")
    end
  end
  do
    if not l_1_1 then
      local l_1_9 = nil
      if not (sysio.RegOpenKey)("HKLM\\System\\CurrentControlSet\\Services\\syshost32") then
        return false
      else
        l_1_1 = (sysio.GetRegValueAsString)((sysio.RegOpenKey)("HKLM\\System\\CurrentControlSet\\Services\\syshost32"), "ImagePath")
        if not l_1_1 then
          return false
        end
        l_1_1 = (string.match)((string.lower)(l_1_1), "%a:\\windows\\installer\\{[%w-]+}\\syshost.exe")
        if not l_1_1 then
          return false
        end
      end
    end
    if l_1_1 then
      l_1_1 = "\\\\?\\" .. l_1_1
      ;
      (Remediation.BtrDeleteFile)(l_1_1)
    end
  end
end

NecursGenericBTRRemoval = function()
  -- function num : 0_1
  local l_2_0 = Remediation.Threat
  for l_2_4,l_2_5 in pairs(l_2_0.Resources) do
    if l_2_5.Schema == "hiddendriver" then
      (Remediation.FfrDriverDeleteByDriverName)(l_2_5.Path)
    else
      if l_2_5.Schema == "hiddenfile" then
        (Remediation.BtrDeleteFile)(l_2_5.Path)
      end
    end
  end
end

if (Remediation.Threat).Active then
  if (string.match)((Remediation.Threat).Name, "WinNT/Necurs") then
    NecursServiceRepair()
  end
  if (string.match)((Remediation.Threat).Name, "Trojan:Win[N6][T4]/Necurs") then
    NecursGenericBTRRemoval()
  end
end

