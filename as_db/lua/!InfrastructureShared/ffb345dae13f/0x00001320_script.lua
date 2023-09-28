-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\ffb345dae13f\0x00001320_luac 

-- params : ...
-- function num : 0
if analyzeRansomwarePattern2() == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

