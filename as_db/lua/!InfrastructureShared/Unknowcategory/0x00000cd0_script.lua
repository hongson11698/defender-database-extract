-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000cd0_luac 

-- params : ...
-- function num : 0
if (string.find)((Remediation.Threat).Name, "Win32/Sefnit!cfg", 1, true) >= 0 then
  local l_0_0 = (sysio.GetCommandLineFromService)("tor")
  if l_0_0 == "\"C:\\Program Files\\Tor\\tor.exe\" --nt-service \"-ControlPort\" \"9051\"" then
    (sysio.DeleteService)("tor")
  end
end

