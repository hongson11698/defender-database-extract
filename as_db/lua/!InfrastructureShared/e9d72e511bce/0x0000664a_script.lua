-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\e9d72e511bce\0x0000664a_luac 

-- params : ...
-- function num : 0
local l_0_0 = GetRealPidForScenario("CMDHSTR")
TrackPidAndTechnique(l_0_0, "T1562.001", "mptamper_mse7")
if IsDetectionThresholdMet(l_0_0) then
  return mp.INFECTED
end
return mp.LOWFI

