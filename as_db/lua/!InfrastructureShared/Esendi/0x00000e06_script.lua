-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Esendi\0x00000e06_luac 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.ExpandEnvironmentVariables)("%ALLUSERSPROFILE%")
;
(sysio.StopService)("bits")
if Info.OSMajorVersion > 6 then
  (sysio.DeleteFile)(l_0_0 .. "\\Microsoft\\Network\\Downloader\\qmgr.db")
else
  ;
  (sysio.DeleteFile)(l_0_0 .. "\\Microsoft\\Network\\Downloader\\qmgr0.db")
  ;
  (sysio.DeleteFile)(l_0_0 .. "\\Microsoft\\Network\\Downloader\\qmgr1.db")
end

