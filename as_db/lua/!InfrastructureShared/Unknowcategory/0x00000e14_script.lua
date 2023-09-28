-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000e14_luac 

-- params : ...
-- function num : 0
Infrastructure_ScanMpEtwPublisher = function()
  -- function num : 0_0
  if (versioning.IsSeville)() then
    (MpCommon.SetGlobalMpAttribute)("MpEtwPublisherKeyScan")
    ;
    (MpDetection.ScanResource)("regkeyvalue://HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\WINEVT\\Publishers\\{751ef305-6c6e-4fed-b847-02ef79d26aef}\\\\")
    ;
    (MpCommon.DeleteGlobalMpAttribute)("MpEtwPublisherKeyScan")
  end
end


