-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!RenosQ\Unknowcategory\0x000000c0_luac 

-- params : ...
-- function num : 0
if ((pehdr.DataDirectory)[3]).RVA ~= 24576 then
  return mp.CLEAN
end
if (mp.bitand)(((pehdr.DataDirectory)[3]).Size, 65536) ~= 65536 then
  return mp.CLEAN
end
if (mp.bitand)(((pehdr.DataDirectory)[2]).RVA, 16384) ~= 16384 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[13]).RVA ~= 16384 then
  return mp.CLEAN
end
if (mp.bitand)(((pehdr.DataDirectory)[13]).Size, 256) ~= 256 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[1]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[1]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[4]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[4]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[5]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[5]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[6]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[6]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[7]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[7]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[8]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[8]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[9]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[9]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[10]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[10]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[11]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[11]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[12]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[12]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[14]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[14]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[15]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[15]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[16]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[16]).Size ~= 0 then
  return mp.CLEAN
end
if peattributes.hasstandardentry ~= true then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 4 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(((pehdr.DataDirectory)[3]).RVA), 156)
;
(mp.writeu_u16)(l_0_0, 9, 0)
;
(mp.writeu_u16)(l_0_0, 33, 0)
;
(mp.writeu_u16)(l_0_0, 57, 0)
;
(mp.writeu_u16)(l_0_0, 77, 0)
;
(mp.writeu_u16)(l_0_0, 81, 0)
if (mp.crc32)(-1, l_0_0, 1, 156) ~= 218061254 then
  return mp.CLEAN
end
return mp.INFECTED

