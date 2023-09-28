-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d6b33ec225a5\0x000013f8_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil and (string.find)(l_0_0.image_path, "/usr/sbin/cron", 1, true) then
  TrackPidAndTechniqueBM("BM", "T1053.003", "Execution_SuspiciousCronActivity")
  addRelatedProcess()
  return mp.INFECTED
end
return mp.CLEAN

