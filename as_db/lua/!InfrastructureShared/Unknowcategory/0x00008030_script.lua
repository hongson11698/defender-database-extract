-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008030_luac 

-- params : ...
-- function num : 0
Infrastructure_NewmanScan = function()
  -- function num : 0_0
  (MpDetection.ScanResource)("specialfolder://recursive:file:%ExchangeInstallPath%\\FrontEnd\\HttpProxy\\owa\\auth")
  ;
  (MpDetection.ScanResource)("specialfolder://recursive:file:%ExchangeInstallPath%\\ClientAccess\\ecp")
  ;
  (MpDetection.ScanResource)("specialfolder://recursive:file:%ExchangeInstallPath%\\FrontEnd\\HttpProxy\\ecp\\auth")
  ;
  (MpDetection.ScanResource)("specialfolder://recursive:file:%ExchangeInstallPath%\\FrontEnd\\HttpProxy\\bin")
  ;
  (MpDetection.ScanResource)("specialfolder://recursive:file:%Windir%\\Microsoft.NET\\Framework64\\v4.0.30319\\Temporary ASP.NET Files\\")
  ;
  (MpDetection.ScanResource)("specialfolder://recursive:file:%SystemDrive%\\inetpub\\wwwroot")
  ;
  (MpDetection.ScanResource)("specialfolder://recursive:file:%ProgramData%\\COM")
end


