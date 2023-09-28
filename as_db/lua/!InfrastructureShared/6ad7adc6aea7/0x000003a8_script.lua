-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6ad7adc6aea7\0x000003a8_luac 

-- params : ...
-- function num : 0
TrackPidAndTechnique("CMDHSTR", "T1096", "permission_groups_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
return mp.LOWFI

