-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaDuckTailsDownloadProcA\0x00008131_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1 == nil or l_0_2 == nil then
  return mp.CLEAN
end
if l_0_1:find("\\users\\", 1, true) then
  local l_0_3 = l_0_1 .. "\\" .. l_0_2
  local l_0_4 = l_0_1:match("\\users\\([^\\]+)\\")
  local l_0_5 = "kassir|quang luu|mr quang|quang luu pc|viet hoang|user|admin|lenovo|hp|asus"
  if l_0_5:find(l_0_4, 1, true) then
    TT_SendBMSigTrigger(l_0_0, "SuspAttackerServer", "scenario:ducktail_actor_infra;filepath:" .. l_0_3)
  end
  if l_0_1:find("\\users\\.+\\downloads", 1, true) then
    TrackPidAndTechnique(l_0_0, "T1027.002", "scenario:ducktail;filepath:" .. l_0_3)
  end
end
do
  return mp.INFECTED
end

