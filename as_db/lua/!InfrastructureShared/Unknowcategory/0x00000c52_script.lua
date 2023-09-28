-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000c52_luac 

-- params : ...
-- function num : 0
if (Remediation.Threat).Active then
  (Remediation.ResetBcdWmiParameter)(Remediation.BCD_INTEGER_BOOT_STATUS_POLICY, 0)
  ;
  (Remediation.ResetBcdWmiParameter)(Remediation.BCD_BOOLEAN_AUTORECOVERY_ENABLED, true)
  ;
  (Remediation.ResetBcdWmiParameter)(Remediation.BCD_BOOLEAN_EMS_ENABLED, true)
end

