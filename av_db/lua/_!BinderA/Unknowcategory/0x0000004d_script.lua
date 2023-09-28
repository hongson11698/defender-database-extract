-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!BinderA\Unknowcategory\0x0000004d_luac 

-- params : ...
-- function num : 0
if (pesecs[1]).SizeOfRawData ~= 384 then
  return mp.CLEAN
end
if (pesecs[1]).PointerToRawData ~= 640 then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 5 then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 1) ~= 1793887061 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 5) ~= 45639680 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 9) ~= 174719040 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 13) ~= 1441267818 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 17) ~= 1560281088 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)((pesecs[1]).VirtualAddress), 277)
if (mp.crc32)(-1, l_0_0, 1, 32) ~= 741603429 then
  return mp.CLEAN
end
if (mp.crc32)(-1, l_0_0, 1, 277) ~= 1117866516 then
  return mp.CLEAN
end
return mp.INFECTED

