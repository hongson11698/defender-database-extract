-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6eb3063fefbd\0x00000294_luac 

-- params : ...
-- function num : 0
if IsDetectionThresholdMet("BM") then
  TrackPidAndTechniqueBM("BM", "T1562.004", "disablefirewall")
  return mp.INFECTED
end
return mp.CLEAN

