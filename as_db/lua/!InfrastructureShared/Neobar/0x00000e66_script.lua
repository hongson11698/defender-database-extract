-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Neobar\0x00000e66_luac 

-- params : ...
-- function num : 0
if (Remediation.Threat).Name == "BrowserModifier:Win32/Neobar" then
  local l_0_0 = (sysio.RegExpandUserKey)("HKCU\\Software\\Policies\\Microsoft\\Internet Explorer\\Infodelivery\\Restrictions")
  if l_0_0 then
    for l_0_4,l_0_5 in pairs(l_0_0) do
      local l_0_6 = (sysio.RegOpenKey)(l_0_5)
      if l_0_6 ~= nil then
        (sysio.DeleteRegValue)(l_0_6, "UsePolicySearchProvidersOnly")
      end
    end
  end
  do
    Infrastructure_CleanSearchByDisplayName("Gigabase")
  end
end

