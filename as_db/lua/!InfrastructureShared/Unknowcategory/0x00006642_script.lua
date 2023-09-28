-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006642_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 10 and (pesecs[9]).PointerToRawData == 1536 and pehdr.Machine == 332 and pehdr.Subsystem == 2 then
  return mp.INFECTED
end
return mp.CLEAN

