-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001204_luac 

-- params : ...
-- function num : 0
DeleteAutoRun = function(l_1_0)
  -- function num : 0_0
  if l_1_0 then
    local l_1_1 = (sysio.RegEnumValues)(l_1_0)
    for l_1_5,l_1_6 in pairs(l_1_1) do
      if l_1_6 then
        local l_1_7 = (sysio.GetRegValueAsString)(l_1_0, l_1_6)
        if l_1_7 then
          local l_1_8, l_1_9 = (string.match)(l_1_7, "(.+\\)([^\\]+%.exe)\"$")
          if l_1_8 ~= nil and l_1_9 ~= nil then
            l_1_8 = (string.lower)(l_1_8)
            if l_1_8:find(":\\programdata\\", 1, true) == nil and l_1_8:find(":\\program files\\common files\\", 1, true) == nil then
              return 
            end
            local l_1_10 = (string.len)(l_1_9)
            if l_1_10 == 13 then
              for l_1_14 = 1, l_1_10 - 4 do
                local l_1_15 = (string.byte)(l_1_9, l_1_14)
                if l_1_15 < 97 or l_1_15 > 122 then
                  return 
                end
              end
            end
            do
              do
                local l_1_16 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\" .. l_1_9
                ;
                (Remediation.BtrDeleteRegKey)(l_1_16)
                l_1_16 = "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Run\\\\" .. l_1_6
                ;
                (Remediation.BtrDeleteRegValue)(l_1_16)
                ;
                (sysio.DeleteRegValue)(l_1_0, l_1_6)
                if (sysio.IsFileExists)(l_1_7) then
                  (Remediation.BtrDeleteFile)(l_1_7)
                end
                ;
                (Remediation.BtrDeleteRegKey)("HKLM\\SOFTWARE\\Win7zip")
                ;
                (Remediation.BtrDeleteRegValue)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\spybotsd.exe\\\\" .. "Debugger")
                ;
                (Remediation.BtrDeleteRegValue)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\hijackthis.exe\\\\" .. "Debugger")
                ;
                (Remediation.BtrDeleteRegValue)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\rstrui.exe\\\\" .. "Debugger")
                ;
                (Remediation.BtrDeleteRegValue)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\housecalllauncher.exe\\\\" .. "Debugger")
                -- DECOMPILER ERROR at PC126: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC126: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC126: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC126: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC126: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC126: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC126: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
    end
  end
end

if (Remediation.Threat).Active and (string.match)((Remediation.Threat).Name, "Behavior:") then
  local l_0_0 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run")
  for l_0_4,l_0_5 in pairs(l_0_0) do
    local l_0_6 = (sysio.RegOpenKey)(l_0_5)
    DeleteAutoRun(l_0_6)
  end
end

