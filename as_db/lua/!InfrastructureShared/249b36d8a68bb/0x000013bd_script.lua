-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\249b36d8a68bb\0x000013bd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (mp.GetParentProcInfo)(l_0_0.ppid)
if l_0_1 ~= nil then
  TrackPidAndTechniqueBM(l_0_1.ppid, "T1560", "Collection", 7200)
  addRelatedProcess()
end
return mp.INFECTED

