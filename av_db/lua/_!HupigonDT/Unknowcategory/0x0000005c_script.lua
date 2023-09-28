-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!HupigonDT\Unknowcategory\0x0000005c_luac 

-- params : ...
-- function num : 0
if pehdr.Characteristics ~= 33166 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).RVA ~= 778240 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[10]).RVA ~= 729088 then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 825307441 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(pehdr.AddressOfEntryPoint), 512)
if (mp.crc32)(-1, l_0_0, 1, 512) ~= 1297451655 then
  return mp.CLEAN
end
return mp.INFECTED

