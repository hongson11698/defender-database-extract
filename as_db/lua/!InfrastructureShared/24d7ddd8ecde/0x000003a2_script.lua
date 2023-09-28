-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\24d7ddd8ecde\0x000003a2_luac 

-- params : ...
-- function num : 0
TrackPidAndTechnique("CMDHSTR", "T1016", "network_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
return mp.LOWFI

