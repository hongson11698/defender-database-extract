-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6d9b39b999ef6\0x000013dd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1, l_0_2 = (bm.get_process_relationships)(l_0_0.ppid)
for l_0_6,l_0_7 in ipairs(l_0_1) do
  (bm.add_related_process)(l_0_7.ppid)
  TrackPidAndTechniqueBM(l_0_7.ppid, "T1562.001", "DefenseEvasion")
end
return mp.INFECTED

