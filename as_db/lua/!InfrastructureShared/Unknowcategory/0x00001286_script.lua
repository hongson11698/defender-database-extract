-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001286_luac 

-- params : ...
-- function num : 0
RemovePayloadFromRegistry = function(l_1_0, l_1_1)
  -- function num : 0_0
  local l_1_2 = (sysio.RegOpenKey)(l_1_0)
  if l_1_2 then
    local l_1_3 = (sysio.RegQueryInfoKey)(l_1_2)
    local l_1_4 = l_1_3.cValues
    if l_1_4 ~= 6 then
      return 
    else
      local l_1_5 = (string.lower)((sysio.GetRegValueAsString)(l_1_2, l_1_1))
      if l_1_5 and (string.match)(l_1_5, "%+=string%.fromcharcode%(.*eval%(.*") then
        (sysio.DeleteRegKey)(l_1_2, nil)
      end
    end
  end
end

RemoveKovterLnk = function(l_2_0, l_2_1)
  -- function num : 0_1
  if l_2_0 and (sysio.IsFileExists)(l_2_0) then
    local l_2_2 = (sysio.GetFileSize)(l_2_0)
    if l_2_2 > 1500 then
      return 
    end
    local l_2_3 = (string.lower)((sysio.ReadFileRaw)(l_2_0, 0, l_2_2))
    local l_2_4 = (string.gsub)(l_2_3, "%z", "")
    if not l_2_4 then
      return nil
    end
    if l_2_1 then
      local l_2_5 = "\"([^\"]+\\appdata\\roaming\\%w+\\%w+%." .. l_2_1 .. ")\""
      local l_2_6 = (string.match)(l_2_4, l_2_5)
      if l_2_6 and (sysio.IsFileExists)(l_2_6) then
        (sysio.DeleteFile)(l_2_6)
        ;
        (sysio.DeleteFile)(l_2_0)
      end
    else
      do
        ;
        (sysio.DeleteFile)(l_2_0)
        local l_2_7 = "(c:\\[^\"]+\\appdata\\local\\%w+)\\(%w+%.%w+\"?)"
        local l_2_8, l_2_9 = (string.match)(l_2_4, l_2_7)
        if l_2_8 and (sysio.IsFolderExists)(l_2_8) then
          local l_2_10 = (sysio.FindFiles)(l_2_8, "*", 0)
          for l_2_14,l_2_15 in pairs(l_2_10) do
            (sysio.DeleteFile)(l_2_15)
          end
        end
      end
    end
  end
end

RemoveKovterASEPS_JS = function(l_3_0)
  -- function num : 0_2
  local l_3_1 = (sysio.RegOpenKey)(l_3_0)
  local l_3_2 = false
  if l_3_1 then
    local l_3_3 = (sysio.RegEnumValues)(l_3_1)
    for l_3_7,l_3_8 in pairs(l_3_3) do
      local l_3_9 = (string.lower)((sysio.GetRegValueAsString)(l_3_1, l_3_8))
      if not l_3_9 then
        return false
      end
      if (string.match)(l_3_9, "mshta \"?javascript:.*;\"?$") or (string.match)(l_3_9, "mshta%.exe\"? \"?javascript:.*;\"?$") then
        (sysio.DeleteRegValue)(l_3_1, l_3_8)
        l_3_2 = true
        if (string.sub)((string.lower)(l_3_0), 1, (string.len)("hkcu")) == "hkcu" then
          local l_3_10, l_3_11 = (string.match)(l_3_9, "regread%(%\"(hkcu\\\\software\\\\%w%w%w+)\\\\(%w%w%w+).*")
          if l_3_10 and l_3_11 then
            l_3_10 = (string.gsub)(l_3_10, "\\\\", "\\")
            RemovePayloadFromRegistry(l_3_10, l_3_11)
          end
        else
          do
            do
              do
                local l_3_12, l_3_13 = (string.match)(l_3_9, "regread%(%\"(hklm\\\\software\\\\wow6432node\\\\%w%w%w+)\\\\(%w%w%w+).*")
                if l_3_12 and l_3_13 then
                  l_3_12 = (string.gsub)(l_3_12, "\\\\", "\\")
                  RemovePayloadFromRegistry(l_3_12, l_3_13)
                end
                if (string.match)(l_3_9, "\\appdata\\local\\%w+\\%w+%.%w%w%w%w+\"?$") then
                  l_3_9 = l_3_9:gsub("\"", "")
                  ;
                  (sysio.DeleteRegValue)(l_3_1, l_3_8)
                  l_3_2 = true
                  ;
                  (sysio.DeleteFile)(l_3_9)
                else
                  if (string.match)(l_3_9, "\\appdata\\local\\%w+\\%w+%.lnk\"?$") or (string.match)(l_3_9, "\\appdata\\local\\%w+\\%w+%.bat\"?$") then
                    l_3_9 = l_3_9:gsub("\"", "")
                    ;
                    (sysio.DeleteRegValue)(l_3_1, l_3_8)
                    l_3_2 = true
                    RemoveKovterLnk(l_3_9)
                  end
                end
                -- DECOMPILER ERROR at PC154: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC154: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC154: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                -- DECOMPILER ERROR at PC154: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC154: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC154: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
    end
  end
  return l_3_2
end

RemoveStartupLnk = function(l_4_0)
  -- function num : 0_3
  local l_4_1 = nil
  local l_4_2 = nil
  for l_4_6,l_4_7 in pairs((sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Shell Folders")) do
    local l_4_3 = nil
    -- DECOMPILER ERROR at PC10: Confused about usage of register: R7 in 'UnsetPending'

    if (sysio.RegOpenKey)(R7_PC10) then
      l_4_2 = (sysio.GetRegValueAsString)((sysio.RegOpenKey)(R7_PC10), "Startup")
      if l_4_2 and (sysio.IsFolderExists)(l_4_2) then
        local l_4_9 = nil
        for l_4_13,l_4_14 in pairs((sysio.FindFiles)(l_4_2, "*.lnk", 0)) do
          local l_4_10 = nil
          -- DECOMPILER ERROR at PC39: Confused about usage of register: R14 in 'UnsetPending'

          RemoveKovterLnk(R14_PC39, l_4_0)
        end
        break
      end
    end
  end
end

findKovterFileExtension = function(l_5_0, l_5_1)
  -- function num : 0_4
  local l_5_2 = (sysio.RegOpenKey)(l_5_0)
  if l_5_2 then
    local l_5_3 = (sysio.RegEnumKeys)(l_5_2)
    for l_5_7,l_5_8 in pairs(l_5_3) do
      if (string.match)(l_5_8, "^%.%w%w%w%w+$") then
        local l_5_9 = (sysio.RegOpenKey)(l_5_0 .. "\\" .. l_5_8)
        local l_5_10 = (string.lower)((sysio.GetRegValueAsString)(l_5_9, nil))
        if l_5_10 == l_5_1 then
          local l_5_11 = "hkcu\\software\\classes\\" .. l_5_8
          local l_5_12 = (sysio.RegExpandUserKey)(l_5_11)
          for l_5_16,l_5_17 in pairs(l_5_12) do
            local l_5_18 = (sysio.RegOpenKey)(l_5_17)
            if l_5_18 then
              (sysio.DeleteRegKey)(l_5_18, nil)
            end
          end
          return (string.sub)(l_5_8, 2, -1)
        end
      end
    end
  end
  do
    l_5_3 = nil
    return l_5_3
  end
end

RemoveASEPS_Classes = function(l_6_0)
  -- function num : 0_5
  local l_6_1 = (sysio.RegOpenKey)(l_6_0)
  if l_6_1 then
    local l_6_2 = (sysio.RegEnumKeys)(l_6_1)
    for l_6_6,l_6_7 in pairs(l_6_2) do
      local l_6_8 = "HKCU\\Software\\Classes\\" .. l_6_7 .. "\\shell\\open\\command"
      local l_6_9 = (sysio.RegOpenKey)(l_6_8)
      if l_6_9 then
        local l_6_10 = RemoveKovterASEPS_JS(l_6_8)
        if l_6_10 then
          (sysio.DeleteRegKey)(l_6_1, l_6_7)
          local l_6_11 = findKovterFileExtension(l_6_0, l_6_7)
          if l_6_11 then
            RemoveStartupLnk(l_6_11)
          end
        end
      end
    end
  end
end

RemoveKovterASEPS = function(l_7_0)
  -- function num : 0_6
  local l_7_1 = (sysio.RegOpenKey)(l_7_0)
  if l_7_1 then
    local l_7_2 = (sysio.RegEnumValues)(l_7_1)
    for l_7_6,l_7_7 in pairs(l_7_2) do
      if l_7_7 and (string.match)(l_7_7, "^{%w%w%w%w%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%w%w%w%w%w%w%w%w}$") then
        local l_7_8 = (string.lower)((sysio.GetRegValueAsString)(l_7_1, l_7_7))
        if l_7_8 and (string.match)(l_7_8, "\\microsoft\\{%w+%-%w+%-%w+%-%w+%-%w+}\\{%w+%-%w+%-%w+%-%w+%-%w+}%.exe\"$") then
          l_7_8 = (string.gsub)(l_7_8, "\"", "")
          ;
          (sysio.DeleteRegValue)(l_7_1, l_7_7)
          ;
          (Remediation.BtrDeleteFile)(l_7_8)
        end
      end
    end
  end
end

if (string.match)((Remediation.Threat).Name, "JS/Kovter") or (string.match)((Remediation.Threat).Name, "Win32/Kovter") then
  local l_0_0 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run")
  for l_0_4,l_0_5 in pairs(l_0_0) do
    RemoveKovterASEPS_JS(l_0_5)
  end
  RemoveKovterASEPS_JS("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run")
  RemoveKovterASEPS_JS("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer\\Run")
  RemoveKovterASEPS_JS("HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Run")
  RemoveKovterASEPS_JS("HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer\\Run")
  local l_0_6 = (sysio.RegExpandUserKey)("HKCU\\Software\\Classes")
  for l_0_10,l_0_11 in pairs(l_0_6) do
    RemoveASEPS_Classes(l_0_11)
  end
  RemoveKovterASEPS("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer\\Run")
  RemoveKovterASEPS("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run")
end

