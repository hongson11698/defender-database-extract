-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!KlekxaA\Unknowcategory\0x0000006a_luac 

-- params : ...
-- function num : 0
if pevars.epsec ~= 1 or pehdr.NumberOfSections ~= 2 then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(pehdr.AddressOfEntryPoint) - 918, 768)
if (mp.crc32)(-1, l_0_0, 1, 768) ~= 3718490045 then
  return mp.CLEAN
end
return mp.INFECTED

