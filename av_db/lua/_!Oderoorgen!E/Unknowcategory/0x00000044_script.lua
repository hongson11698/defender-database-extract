-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Oderoorgen!E\Unknowcategory\0x00000044_luac 

-- params : ...
-- function num : 0
if pehdr.MajorLinkerVersion ~= 6 then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 4 then
  return mp.CLEAN
end
if (mp.bitand)(epcode[1], 184) ~= 184 then
  return mp.CLEAN
end
if epcode[6] ~= 45 then
  return mp.CLEAN
end
if epcode[11] ~= 255 then
  return mp.CLEAN
end
if epcode[13] ~= 104 then
  return mp.CLEAN
end
if epcode[18] ~= 232 then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.lastscn_writable ~= true then
  return mp.CLEAN
end
if peattributes.firstsectwritable ~= true then
  return mp.CLEAN
end
if (pesecs[1]).VirtualSize > 1520 then
  return mp.CLEAN
end
if (pesecs[1]).Characteristics ~= 3758096416 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).Characteristics ~= 3758096480 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData > 69632 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 1952539694 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualAddress < 102400 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualAddress > 196608 then
  return mp.CLEAN
end
if pehdr.SizeOfImage < 159744 then
  return mp.CLEAN
end
if pehdr.SizeOfImage > 262144 then
  return mp.CLEAN
end
return mp.INFECTED

