-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000782e_luac 

-- params : ...
-- function num : 0
if pehdr.BaseOfData == 0 and pehdr.SizeOfInitializedData == 0 and pehdr.SizeOfUninitializedData == 0 and pehdr.SizeOfCode == 0 and (hstrlog[1]).VA - pehdr.ImageBase - (pesecs[1]).VirtualAddress == 4336 then
  return mp.INFECTED
end
return mp.CLEAN

