-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\77b3c7ef53d6\0x00000c4d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil then
  TrackPidAndTechniqueBM(l_0_0.ppid, "T1543.003", "persistence_services_b")
  return mp.INFECTED
end
return mp.CLEAN

