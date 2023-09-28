-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\215b3385d2c7c\0x00001321_luac 

-- params : ...
-- function num : 0
if analyzeRansomwarePattern1() == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

