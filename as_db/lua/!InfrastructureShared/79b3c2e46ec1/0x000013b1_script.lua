-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\79b3c2e46ec1\0x000013b1_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  (bm.add_related_process)(l_0_6.ppid)
  TrackPidAndTechniqueBM(l_0_6.ppid, "T1548.003", "PrivilegeEscalation")
end
return mp.INFECTED

