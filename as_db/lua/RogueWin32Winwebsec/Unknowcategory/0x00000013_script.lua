-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\RogueWin32Winwebsec\Unknowcategory\0x00000013_luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 5 then
  return mp.CLEAN
end
if pehdr.SizeOfImage ~= 1953792 then
  return mp.CLEAN
end
if (pesecs[1]).VirtualSize ~= 933888 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 593) ~= 188416 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 597) ~= 942080 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 621) ~= 3221225536 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(pehdr.AddressOfEntryPoint), 108)
if (mp.crc32)(-1, l_0_0, 1, 108) ~= 1591061623 then
  return mp.CLEAN
end
return mp.INFECTED

