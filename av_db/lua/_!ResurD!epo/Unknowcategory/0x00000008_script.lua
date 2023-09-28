-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!ResurD!epo\Unknowcategory\0x00000008_luac 

-- params : ...
-- function num : 0
if (mp.bitand)(pehdr.ImageBase, 3204448256) ~= 3204448256 then
  return mp.CLEAN
end
if peattributes.no_relocs ~= false then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData ~= 4096 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).VirtualSize ~= 3612 then
  return mp.CLEAN
end
if pehdr.NumberOfSections <= 4 then
  return mp.CLEAN
end
if (mp.bitand)(pehdr.Characteristics, 8192) == 8192 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(((pehdr.DataDirectory)[6]).RVA), 1040)
if (mp.crc32)(-1, l_0_0, 17, 1024) ~= 254301721 then
  return mp.CLEAN
end
return mp.INFECTED

