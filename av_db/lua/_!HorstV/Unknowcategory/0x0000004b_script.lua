-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!HorstV\Unknowcategory\0x0000004b_luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 3 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 489) ~= 167936 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 517) ~= 3758096480 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 529) ~= 57344 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 557) ~= 3758096480 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)(2598, 256)
if (mp.crc32)(-1, l_0_0, 1, 256) ~= 1367920942 then
  return mp.CLEAN
end
return mp.INFECTED

