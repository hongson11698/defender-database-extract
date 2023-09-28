-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\7078838cc\0x000074f0_luac 

-- params : ...
-- function num : 0
local l_0_0 = pevars.epsec
if pevars.epsec and (pesecs[l_0_0]).SizeOfRawData >= 40960 and (pesecs[l_0_0]).SizeOfRawData <= 131072 and pehdr.SizeOfImage >= 65536 and pehdr.SizeOfImage <= 1044480 then
  (mp.changedetectionname)(805306422)
  return mp.INFECTED
end
return mp.SUSPICIOUS

