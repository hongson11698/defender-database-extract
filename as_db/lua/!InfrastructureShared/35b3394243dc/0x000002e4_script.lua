-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\35b3394243dc\0x000002e4_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 100000000 then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if (string.find)(l_0_0, "\\activetraderpro", 1, true) or (string.find)(l_0_0, "\\ftsearchservice", 1, true) then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.QueryPersistContext)(l_0_0, "ExecutedPENoCert")
if not l_0_1 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1095", "command_control_c")
return mp.INFECTED

