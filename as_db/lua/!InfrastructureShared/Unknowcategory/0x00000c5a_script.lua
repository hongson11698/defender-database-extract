-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000c5a_luac 

-- params : ...
-- function num : 0
local l_0_0 = Remediation.Threat
if l_0_0.Active and (string.match)(l_0_0.Name, "PWS:Win32/Zbot.*") then
  for l_0_4,l_0_5 in pairs(l_0_0.Resources) do
    if l_0_5.Schema == "hiddenfile" then
      (Remediation.BtrDeleteFile)(l_0_5.Path)
    end
  end
end

