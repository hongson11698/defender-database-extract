-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000bb9_luac 

-- params : ...
-- function num : 0
if not (Remediation.Threat).Offline and (string.find)((Remediation.Threat).Name, "Detrahere!reg", 1, true) then
  (Remediation.SetCallistoRequired)()
end

