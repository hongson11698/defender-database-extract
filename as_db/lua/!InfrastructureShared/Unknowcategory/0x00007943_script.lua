-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007943_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 4 or peattributes.epinfirstsect == false or (pesecs[2]).SizeOfRawData ~= 40960 or (pesecs[2]).Name ~= ".data1" or (hstrlog[1]).VA ~= pehdr.ImageBase + pehdr.AddressOfEntryPoint then
  return mp.CLEAN
end
return mp.INFECTED

