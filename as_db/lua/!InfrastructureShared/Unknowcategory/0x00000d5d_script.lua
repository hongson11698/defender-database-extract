-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d5d_luac 

-- params : ...
-- function num : 0
if pevars.epsec < 4 or pehdr.NumberOfSections < pevars.epsec or (pesecs[pevars.epsec]).NameDW ~= (pesecs[pevars.epsec - 1]).NameDW or (pesecs[pevars.epsec - 1]).SizeOfRawData ~= 0 or (pesecs[pevars.epsec - 1]).PointerToRawData ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED

