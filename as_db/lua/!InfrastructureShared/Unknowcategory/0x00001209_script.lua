-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001209_luac 

-- params : ...
-- function num : 0
CompareRegValueAndRemove = function(l_1_0, l_1_1)
  -- function num : 0_0
  local l_1_2 = ((sysio.RegOpenKey)(l_1_0))
  local l_1_3 = nil
  if l_1_2 then
    local l_1_4 = (sysio.RegEnumValues)(l_1_2)
    for l_1_8,l_1_9 in pairs(l_1_4) do
      if l_1_9 then
        l_1_3 = (sysio.GetRegValueAsString)(l_1_2, l_1_9)
        if l_1_3 then
          l_1_3 = (string.lower)(l_1_3)
          if (string.find)(l_1_3, l_1_1, 1, true) then
            (sysio.DeleteRegValue)(l_1_2, l_1_9)
            return true
          end
        end
      end
    end
  end
  do
    l_1_4 = false
    return l_1_4
  end
end

if (Remediation.Threat).Active then
  local l_0_0, l_0_1 = nil, nil
  l_0_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Run")
  if l_0_0 then
    l_0_1 = (sysio.GetRegValueAsString)(l_0_0, "cryptolocker")
    if l_0_1 ~= nil then
      (sysio.DeleteRegValue)(l_0_0, "cryptolocker")
    end
  end
  l_0_0 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\RunOnce")
  if l_0_0 then
    l_0_1 = (sysio.GetRegValueAsString)(l_0_0, "*cryptolocker")
    if l_0_1 ~= nil then
      (sysio.DeleteRegValue)(l_0_0, "*cryptolocker")
    end
  end
  local l_0_2 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run")
  for l_0_6,l_0_7 in pairs(l_0_2) do
    l_0_0 = (sysio.RegOpenKey)(l_0_7)
    if l_0_0 then
      l_0_1 = (sysio.GetRegValueAsString)(l_0_0, "cryptolocker")
      if l_0_1 ~= nil then
        (sysio.DeleteRegValue)(l_0_0, "cryptolocker")
      end
    end
  end
  local l_0_8 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\RunOnce")
  for l_0_12,l_0_13 in pairs(l_0_8) do
    l_0_0 = (sysio.RegOpenKey)(l_0_13)
    if l_0_0 then
      l_0_1 = (sysio.GetRegValueAsString)(l_0_0, "*cryptolocker")
      if l_0_1 ~= nil then
        (sysio.DeleteRegValue)(l_0_0, "*cryptolocker")
      end
    end
  end
  local l_0_14 = "HKCU\\SOFTWARE\\BIT TORRENT APPLICATION\\CONFIGURATION"
  local l_0_15 = ((sysio.RegExpandUserKey)(l_0_14))
  local l_0_16, l_0_17, l_0_18 = nil, nil, nil
  for l_0_22,l_0_23 in pairs(l_0_15) do
    l_0_16 = (sysio.RegOpenKey)(l_0_23)
    if l_0_16 then
      l_0_18 = (sysio.RegEnumValues)(l_0_16)
      for l_0_27,l_0_28 in pairs(l_0_18) do
        if l_0_28 then
          l_0_17 = (sysio.GetRegValueAsString)(l_0_16, l_0_28)
          if l_0_17 then
            l_0_17 = (string.lower)(l_0_17)
            if l_0_17 ~= nil and (string.find)(l_0_17, ".exe", 1, true) and ((string.find)(l_0_17, "\\windows\\", 1, true) or (string.find)(l_0_17, "\\programdata\\", 1, true)) then
              if not CompareRegValueAndRemove("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Run", l_0_17) then
                for l_0_32,l_0_33 in pairs(l_0_2) do
                  if CompareRegValueAndRemove(l_0_33, l_0_17) then
                    break
                  end
                end
              end
              do
                do
                  if (sysio.IsFileExists)(l_0_17) then
                    (MpCommon.ReportLowfi)(l_0_17, 1189452850)
                  end
                  do break end
                  -- DECOMPILER ERROR at PC209: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC209: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC209: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC209: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC209: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC209: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC209: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
        end
      end
    end
  end
end

