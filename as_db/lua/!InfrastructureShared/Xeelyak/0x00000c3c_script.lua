-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Xeelyak\0x00000c3c_luac 

-- params : ...
-- function num : 0
for l_0_3,l_0_4 in pairs((Remediation.Threat).Resources) do
  if l_0_4.Schema == "folder" then
    Infrastructure_CleanRegistryUninstallLocation(l_0_4.Path)
  end
end
;
(Remediation.SetRebootRequired)()

