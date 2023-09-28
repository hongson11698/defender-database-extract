-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\b6b3c8b8eb25\0x00001377_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 100000000 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1070.006", "DefenseEvasion")
return mp.INFECTED

