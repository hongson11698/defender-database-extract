-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\7778afb7f\0x000064b4_luac 

-- params : ...
-- function num : 0
if (pehdr.SizeOfImage >= 327680 and pehdr.SizeOfImage <= 983040) or pehdr.SizeOfImage >= 2097152 and pehdr.SizeOfImage <= 3473408 then
  return mp.INFECTED
end
;
(mp.changedetectionname)(805306390)
return mp.SUSPICIOUS

