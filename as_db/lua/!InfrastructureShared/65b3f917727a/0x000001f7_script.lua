-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\65b3f917727a\0x000001f7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = false
local l_0_2 = false
if not l_0_0 or not l_0_0.pid then
  return mp.CLEAN
end
l_0_2 = pcall(MpCommon.QuerySessionInformation, l_0_0.ppid, MpCommon.WTSIsRemoteSession)
if l_0_2 and l_0_1 then
  reportSessionInformation()
  reportRelevantUntrustedEntities()
  return mp.INFECTED
end
return mp.CLEAN

