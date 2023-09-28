-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007ddf_luac 

-- params : ...
-- function num : 0
Infrastructure_AsrLinkScan = function(l_1_0)
  -- function num : 0_0
  (MpCommon.SetGlobalMpAttribute)("DefenderAsrLinkRescue")
  if l_1_0 == "postsig" then
    (MpDetection.ScanResource)("regkeyvalue://HKLM\\Software\\Microsoft\\ASRFix\\\\scriptresult")
  else
    if l_1_0 == "qscanmachine" or l_1_0 == "qscanuser" then
      (MpDetection.ScanResource)("regkeyvalue://HKCU\\Software\\Microsoft\\ASRFix\\\\scriptresult")
      ;
      (MpDetection.ScanResource)("regkeyvalue://HKCU\\Software\\Microsoft\\ASRFix\\\\mptaskbarrecoverversion")
    end
  end
  ;
  (MpCommon.DeleteGlobalMpAttribute)("DefenderAsrLinkRescue")
end


