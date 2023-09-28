-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d2b_luac 

-- params : ...
-- function num : 0
Infrastructure_3CXScan = function()
  -- function num : 0_0
  local l_1_0 = (MpCommon.ExpandEnvironmentVariables)("%localappdata%")
  ;
  (MpDetection.ScanResource)("file://" .. l_1_0 .. "\\Programs\\3CXDesktopApp\\app\\ffmpeg.dll")
  ;
  (MpDetection.ScanResource)("file://" .. l_1_0 .. "\\Programs\\3CXDesktopApp\\app\\d3dcompiler_47.dll")
end


