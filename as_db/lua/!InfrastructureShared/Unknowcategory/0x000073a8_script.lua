-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000073a8_luac 

-- params : ...
-- function num : 0
if peattributes.isexe and pehdr.NumberOfSections == 3 and (pesecs[3]).VirtualSize >= 2176 and (pesecs[3]).VirtualSize <= 4096 and pehdr.SizeOfImage >= 20480 and pehdr.SizeOfImage <= 36864 then
  return mp.INFECTED
end
return mp.CLEAN

