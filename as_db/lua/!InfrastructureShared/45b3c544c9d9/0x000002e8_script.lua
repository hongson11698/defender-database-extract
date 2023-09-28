-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\45b3c544c9d9\0x000002e8_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
do
  if l_0_0 and ((string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "\\windows", 1, true)) then
    local l_0_1 = (MpCommon.QueryPersistContext)(l_0_0, "NewPECreatedNoCert")
    if l_0_1 then
      TrackPidAndTechniqueBM("BM", "T1071", "command_control_a")
      return mp.INFECTED
    end
    return mp.CLEAN
  end
  local l_0_2 = (MpCommon.QueryPersistContext)(l_0_0, "ExecutedPENoCert")
  if not l_0_2 then
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM("BM", "T1071", "command_control_a")
  return mp.INFECTED
end

