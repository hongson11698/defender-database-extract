-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\adb3b8e320b2\0x000001ab_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (MpCommon.QuerySessionInformation)(l_0_0.ppid, MpCommon.WTSIsRemoteSession)
do
  if l_0_1 then
    local l_0_2 = (MpCommon.QuerySessionInformation)(l_0_0.ppid, MpCommon.WTSClientAddress)
    ;
    (bm.add_related_string)("bmurl", l_0_2.Address, bm.RelatedStringBMReport)
    TrackAttackerServer(l_0_2.Address)
    return mp.INFECTED
  end
  return mp.CLEAN
end

