-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6fb3a3fe0e23\0x00001381_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).wp2 == nil then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1018", "Discovery")
return mp.INFECTED

