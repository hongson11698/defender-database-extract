-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\AccessibilityEscalation\0x000011a8_luac 

-- params : ...
-- function num : 0
if (Remediation.Threat).Active then
  if (string.match)((Remediation.Threat).Name, "Behavior:Win32/AccessibilityEscalation.I") or (string.match)((Remediation.Threat).Name, "Behavior:Win32/AccessibilityEscalation.N") then
    Infrastructure_CleanImageFileDebugger("sethc.exe")
  else
    if (string.match)((Remediation.Threat).Name, "Behavior:Win32/AccessibilityEscalation.J") or (string.match)((Remediation.Threat).Name, "Behavior:Win32/AccessibilityEscalation.O") then
      Infrastructure_CleanImageFileDebugger("utilman.exe")
    else
      if (string.match)((Remediation.Threat).Name, "Behavior:Win32/AccessibilityEscalation.K") or (string.match)((Remediation.Threat).Name, "Behavior:Win32/AccessibilityEscalation.P") then
        Infrastructure_CleanImageFileDebugger("osk.exe")
      else
        if (string.match)((Remediation.Threat).Name, "Behavior:Win32/AccessibilityEscalation.L") or (string.match)((Remediation.Threat).Name, "Behavior:Win32/AccessibilityEscalation.Q") then
          Infrastructure_CleanImageFileDebugger("magnify.exe")
        else
          if (string.match)((Remediation.Threat).Name, "Behavior:Win32/AccessibilityEscalation.M") or (string.match)((Remediation.Threat).Name, "Behavior:Win32/AccessibilityEscalation.R") then
            Infrastructure_CleanImageFileDebugger("narrator.exe")
          else
            if (string.match)((Remediation.Threat).Name, "Behavior:Win32/AccessibilityEscalation.S") then
              Infrastructure_CleanImageFileDebugger("atbroker.exe")
            else
              if (string.match)((Remediation.Threat).Name, "Behavior:Win32/AccessibilityEscalation.AC") then
                Infrastructure_CleanImageFileDebugger("displayswitch.exe")
              end
            end
          end
        end
      end
    end
  end
end

