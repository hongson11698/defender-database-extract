-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008105_luac 

-- params : ...
-- function num : 0
if ((hstrlog[1]).matched and 1 or 0) + ((hstrlog[2]).matched and 1 or 0) + ((hstrlog[3]).matched and 1 or 0) + ((hstrlog[4]).matched and 1 or 0) + ((hstrlog[5]).matched and 1 or 0) + ((hstrlog[6]).matched and 1 or 0) + ((hstrlog[7]).matched and 1 or 0) + ((hstrlog[8]).matched and 1 or 0) >= 2 and (pesecs[1]).SizeOfRawData > 1310720 and (pesecs[pehdr.NumberOfSections]).SizeOfRawData > 385024 and pehdr.MajorLinkerVersion == 2 and pehdr.MinorLinkerVersion == 25 and pehdr.NumberOfSections >= 9 and pehdr.MajorImageVersion == 0 and pehdr.MajorImageVersion == 0 and pehdr.MajorOperatingSystemVersion == 5 and pehdr.MinorOperatingSystemVersion == 0 and pevars.epsec == 2 then
  return mp.INFECTED
end
return mp.CLEAN

