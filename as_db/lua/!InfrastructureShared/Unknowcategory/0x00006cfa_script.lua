-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006cfa_luac 

-- params : ...
-- function num : 0
if pehdr.SizeOfImage >= 65536 and pehdr.SizeOfImage <= 131072 and peattributes.executes_from_dynamic_memory then
  return mp.INFECTED
else
  ;
  (mp.changedetectionname)(805306395)
  return mp.SUSPICIOUS
end
return mp.CLEAN

