-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4d5b36c354cc3\0x0000025d_luac 

-- params : ...
-- function num : 0
if IsDetectionThresholdMet("BM") then
  return mp.INFECTED
end
return mp.CLEAN

