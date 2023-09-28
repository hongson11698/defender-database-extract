-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\35b371b1051c\0x0000036a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.find)(l_0_0, "\\windows\\explorer.exe", 1, true) or (string.find)(l_0_0, "\\system32\\svchost.exe", 1, true) or (string.find)(l_0_0, "\\syswow64\\svchost.exe", 1, true) or (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "chrome.exe", 1, true) or (string.find)(l_0_0, "teams.exe", 1, true) or (string.find)(l_0_0, "msedge.exe", 1, true) or (string.find)(l_0_0, "iexplore.exe", 1, true) or (string.find)(l_0_0, "openwith.exe", 1, true) or (string.find)(l_0_0, "\\veeam", 1, true) or (string.find)(l_0_0, "\\webnavigatorbrowser\\", 1, true) or (string.find)(l_0_0, "\\modernwarfare.exe", 1, true) or (string.find)(l_0_0, "\\league of legends.exe", 1, true) or (string.find)(l_0_0, "\\wowclassic.exe", 1, true) or (string.find)(l_0_0, "\\battle.net\\battle.net.exe", 1, true) or (string.find)(l_0_0, "\\grand theft auto v\\gta5.exe", 1, true) or (string.find)(l_0_0, "\\acrord32.exe", 1, true) or (string.find)(l_0_0, "\\firefox.exe", 1, true) or (string.find)(l_0_0, "git.exe", 1, true) then
  return mp.CLEAN
end
local l_0_1, l_0_2 = (bm.get_process_relationships)()
for l_0_6,l_0_7 in ipairs(l_0_2) do
  local l_0_8 = (mp.bitand)(l_0_7.reason_ex, bm.RELATIONSHIP_INJECTION)
  if l_0_8 == bm.RELATIONSHIP_INJECTION then
    TrackPidAndTechniqueBM(l_0_7.ppid, "T1055.002", "processinjection_target_i")
    ;
    (bm.request_SMS)(l_0_7.ppid, "M")
    ;
    (bm.add_action)("SmsAsyncScanEvent", 1000)
  end
end
return mp.INFECTED

