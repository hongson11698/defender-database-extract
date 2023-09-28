-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000e1f_luac 

-- params : ...
-- function num : 0
if Info.OSMajorVersion == 5 then
  (Remediation.DefaultSpecialRegistry)("HKLM\\Software\\Classes\\CLSID\\{73E709EA-5D93-4B2E-BBB0-99B7938DA9E4}")
  ;
  (Remediation.DefaultSpecialRegistry)("HKCU\\Software\\Classes\\CLSID\\{73E709EA-5D93-4B2E-BBB0-99B7938DA9E4}")
else
  ;
  (Remediation.DefaultSpecialRegistry)("HKLM\\Software\\Classes\\CLSID\\{AB8902B4-09CA-4bb6-B78D-A8F59079A8D5}")
  ;
  (Remediation.DefaultSpecialRegistry)("HKCU\\Software\\Classes\\CLSID\\{AB8902B4-09CA-4bb6-B78D-A8F59079A8D5}")
end

