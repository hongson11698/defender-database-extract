-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!FlyStudioN\Unknowcategory\0x00000051_luac 

-- params : ...
-- function num : 0
if peattributes.hasappendeddata ~= true then
  return mp.CLEAN
end
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 6 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 1952539694 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 593) ~= 159744 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 597) ~= 20480 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(20480), 2)
if (mp.readu_u16)(l_0_0, 1) ~= 19031 then
  return mp.CLEAN
end
local l_0_1 = (mp.readfile)((pe.foffset_rva)(24976), 80)
if (mp.crc32)(-1, l_0_1, 1, 80) ~= 2213776060 then
  return mp.CLEAN
end
return mp.INFECTED

