-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\235b3e21c8a6e\0x00007cf4_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (MpCommon.QuerySessionInformation)(l_0_0.ppid, MpCommon.WTSIsRemoteSession)
if l_0_1 then
  local l_0_2 = (MpCommon.QuerySessionInformation)(l_0_0.ppid, MpCommon.WTSUserName)
  if (MpCommon.QueryPersistContextNoPath)("MpNewRemoteUsers", l_0_2) then
    local l_0_3 = isTamperProtectionOn(false)
    ;
    (bm.add_related_string)("TpState", tostring(l_0_3), bm.RelatedStringBMReport)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

