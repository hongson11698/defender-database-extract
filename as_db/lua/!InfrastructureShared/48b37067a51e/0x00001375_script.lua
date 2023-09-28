-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\48b37067a51e\0x00001375_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 50000000 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1486", "Impact_Encryption")
return mp.INFECTED

