-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000595c_luac 

-- params : ...
-- function num : 0
if pehdr.SizeOfImage >= 819200 and pehdr.SizeOfImage < 827392 then
  return mp.INFECTED
end
;
(mp.changedetectionname)(805306376)
return mp.SUSPICIOUS

