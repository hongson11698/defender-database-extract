-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!BifroseHZ\Unknowcategory\0x00000067_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 2 then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 1) ~= 2213317461 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 5) ~= 4283843820 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(pehdr.AddressOfEntryPoint) - 25672, 17408)
if (mp.crc32)(-1, l_0_0, 1, 17408) ~= 2273450232 then
  return mp.CLEAN
end
return mp.INFECTED

