-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Hopadef\0x000011ad_luac 

-- params : ...
-- function num : 0
if (string.find)((Remediation.Threat).Name, "BrowserModifier:Win32/Hopadef!lnk", 1, true) then
  for l_0_3,l_0_4 in pairs((Remediation.Threat).Resources) do
    if l_0_4.Schema == "file" then
      local l_0_5, l_0_6 = (string.match)(l_0_4.Path, "(.+\\)([^\\]+)$")
      if (string.find)((string.lower)(l_0_6), "g..gl. .hr.m.%.lnk") == 1 then
        do
          if not (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Google Chrome") then
            local l_0_7, l_0_8 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Google Chrome")
          end
          -- DECOMPILER ERROR at PC46: Confused about usage of register: R7 in 'UnsetPending'

          -- DECOMPILER ERROR at PC50: Confused about usage of register: R7 in 'UnsetPending'

          do
            if l_0_7 then
              local l_0_9 = nil
              if (sysio.GetRegValueAsString)(l_0_7, "InstallLocation") == "C:\\Program Files (x86)\\Google\\Chrome\\Application" then
                (MpCommon.SetGlobalMpAttribute)("LUA:HopadefChromex86")
              else
                if (sysio.GetRegValueAsString)(l_0_7, "InstallLocation") == "C:\\Program Files\\Google\\Chrome\\Application" then
                  (MpCommon.SetGlobalMpAttribute)("LUA:HopadefChromeNox86")
                end
              end
            end
            do
              if (string.find)((string.lower)(l_0_6), "int.rn.t ...l.r.r%.lnk") == 1 or (string.find)((string.lower)(l_0_6), "int.rn.t ...l.r.r (n. .dd-.ns)%.lnk") == 1 or (string.find)((string.lower)(l_0_6), "int.rn.t ...l.r.r (64-bit)%.lnk") == 1 then
                local l_0_10 = (MpCommon.ExpandEnvironmentVariables)("%program_files%")
                if (string.find)((string.lower)(l_0_10), " (x86)", 1, true) ~= nil then
                  (MpCommon.SetGlobalMpAttribute)("LUA:HopadefIEx86")
                else
                  ;
                  (MpCommon.SetGlobalMpAttribute)("LUA:HopadefIENox86")
                end
              end
              -- DECOMPILER ERROR at PC122: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC122: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC122: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC122: LeaveBlock: unexpected jumping out IF_STMT

              -- DECOMPILER ERROR at PC122: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC122: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
    end
  end
end

