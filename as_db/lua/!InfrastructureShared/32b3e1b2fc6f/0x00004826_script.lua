-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\32b3e1b2fc6f\0x00004826_luac 

-- params : ...
-- function num : 0
if IsDetectionThresholdMet("BM") then
  return mp.INFECTED
end
return mp.CLEAN

