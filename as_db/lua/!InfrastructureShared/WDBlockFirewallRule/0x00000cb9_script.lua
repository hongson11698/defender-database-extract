-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\WDBlockFirewallRule\0x00000cb9_luac 

-- params : ...
-- function num : 0
local l_0_0 = Remediation.Threat
if (l_0_0 and (string.find)(l_0_0.Name, "Behavior:Win32/WDBlockFirewallRule.P", 1, true)) or (string.find)(l_0_0.Name, "Behavior:Win32/WDBlockFirewallRule.S", 1, true) then
  (Remediation.SetRebootRequired)()
end

