-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\15b3f1c3041a\0x000013d7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil and IsTechniqueObservedForPid(l_0_0.ppid, "T1105") then
  TrackPidAndTechniqueBM(l_0_0.ppid, "T1543.002", "Persistence")
  return mp.INFECTED
end
return mp.CLEAN

