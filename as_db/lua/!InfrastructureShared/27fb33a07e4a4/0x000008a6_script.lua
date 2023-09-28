-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\27fb33a07e4a4\0x000008a6_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (bm.get_SMS_level)(l_0_0.ppid)
local l_0_2 = mp.SMS_SCAN_LOW_ADV - mp.SMS_SCAN_LOW
if l_0_2 == (mp.bitand)(l_0_1, l_0_2) then
  return mp.CLEAN
end
local l_0_3 = (bm.get_imagepath)()
if not l_0_3 then
  return mp.CLEAN
end
l_0_3 = (string.lower)((MpCommon.PathToWin32Path)(l_0_3))
if (string.find)(l_0_3, "\\\\puddingzip\\\\pdzipservice.exe", 30, true) or (string.find)(l_0_3, "\\\\santivirus\\\\santivirusic.exe", 30, true) or (string.find)(l_0_3, "\\\\cloudvolumes\\\\agent\\\\svservice.exe", 36, true) or (string.find)(l_0_3, "\\\\segurazo\\\\segurazoic.exe", 26, true) or (string.find)(l_0_3, "\\\\thirtyseven4\\\\scsecsvc.exe", 28, true) or (string.find)(l_0_3, "\\\\application manager\\\\agent\\\\amagentassist.exe", 47, true) or (string.find)(l_0_3, "\\\\bitdefender\\\\tools\\\\bdantiransomware\\\\bdantiransomware.exe", 60, true) then
  return mp.CLEAN
end
if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1055.002", "portable_executable_injection")
return mp.INFECTED

