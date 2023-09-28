-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\365b3b45a5e30\0x000013d1_luac 

-- params : ...
-- function num : 0
local l_0_0 = 150000000
if l_0_0 < (bm.GetSignatureMatchDuration)() then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1486", "Impact_Encryption")
reportRelatedBmHits()
addRelatedProcess()
return mp.INFECTED

