-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9cb3707eea79\0x000004a0_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if not l_0_0 then
  return mp.CLEAN
end
if l_0_0.ppid then
  if IsPidExcluded(l_0_0.ppid) then
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM(l_0_0.ppid, "T1057", "xfer_from_attackerserver_c")
  return mp.INFECTED
end
return mp.CLEAN

