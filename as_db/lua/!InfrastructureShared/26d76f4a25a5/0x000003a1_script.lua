-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\26d76f4a25a5\0x000003a1_luac 

-- params : ...
-- function num : 0
TrackPidAndTechnique("CMDHSTR", "T1082", "system_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
return mp.LOWFI

