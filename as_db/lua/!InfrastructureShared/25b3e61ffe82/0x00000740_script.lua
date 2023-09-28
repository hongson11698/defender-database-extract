-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\25b3e61ffe82\0x00000740_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  TrackPidAndTechniqueBM(l_0_0.ppid, "T1003.003", "NtdsFromDiskShadow", 60)
else
  TrackPidAndTechniqueBM("BM", "T1003.003", "NtdsFromDiskShadow", 60)
end
return mp.INFECTED

