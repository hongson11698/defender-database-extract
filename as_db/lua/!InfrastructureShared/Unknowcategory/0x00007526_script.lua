-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007526_luac 

-- params : ...
-- function num : 0
if epcode[1] == 232 and epcode[6] == 232 and epcode[11] == 51 and epcode[13] == 195 and pevars.lscnwr == 1 and (pesecs[pehdr.NumberOfSections]).PointerToRawData == 45056 then
  return mp.INFECTED
end
return mp.CLEAN

