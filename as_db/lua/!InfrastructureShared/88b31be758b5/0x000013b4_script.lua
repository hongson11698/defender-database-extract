-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\88b31be758b5\0x000013b4_luac 

-- params : ...
-- function num : 0
local l_0_0 = 30000000
if l_0_0 < (bm.GetSignatureMatchDuration)() then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1552.003", "CredentialAccess")
addRelatedProcess()
return mp.INFECTED

