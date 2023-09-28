-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!KheagolD\Unknowcategory\0x00000066_luac 

-- params : ...
-- function num : 0
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 4 then
  return mp.CLEAN
end
if (mp.bitand)(pehdr.ImageBase, 8388608) ~= 8388608 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).RVA <= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).Size > 144 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).Size < 112 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(((pehdr.DataDirectory)[2]).RVA), 58)
if (mp.readu_u32)(l_0_0, 1) ~= 17052 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 5) ~= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 13) ~= 17028 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 53) ~= 18772 then
  return mp.CLEAN
end
return mp.INFECTED

