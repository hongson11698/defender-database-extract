-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\RogueWin32Winwebsec\Unknowcategory\0x0000000a_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 5 then
  return mp.CLEAN
end
if pehdr.SizeOfImage ~= 819200 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 649) ~= 1936487470 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 685) ~= 3221225536 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(pehdr.AddressOfEntryPoint), 23)
;
(mp.writeu_u32)(l_0_0, 17, 0)
if (mp.crc32)(-1, l_0_0, 1, 23) ~= 1897054316 then
  return mp.CLEAN
end
return mp.INFECTED

