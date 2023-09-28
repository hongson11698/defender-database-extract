-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\b078aecb3\0x000069d1_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 4 and pevars.epsec == 1 and (pesecs[pevars.epsec]).SizeOfRawData >= 40960 and (pesecs[pevars.epsec]).SizeOfRawData <= 57344 then
  return mp.SUSPICIOUS
end
return mp.LOWFI

