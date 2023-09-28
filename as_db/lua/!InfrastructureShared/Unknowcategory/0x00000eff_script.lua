-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000eff_luac 

-- params : ...
-- function num : 0
Infrastructure_MicrosoftIRScan = function()
  -- function num : 0_0
  if (versioning.GetProduct)() ~= 17 then
    return 
  end
  ;
  (MpCommon.SetGlobalMpAttribute)("IRScanGlobal")
  ;
  (MpCommon.SetGlobalMpAttribute)("MpIsExhaustiveScriptScan")
  ;
  (MpDetection.ScanResource)("specialfolder://recursive:file:%SystemDrive%\\inetpub\\logs\\LogFiles\\W3SVC1")
  ;
  (MpDetection.ScanResource)("specialfolder://recursive:file:%SystemDrive%\\inetpub\\logs\\LogFiles\\W3SVC2")
  ;
  (MpCommon.DeleteGlobalMpAttribute)("MpIsExhaustiveScriptScan")
  ;
  (MpCommon.DeleteGlobalMpAttribute)("IRScanGlobal")
end


