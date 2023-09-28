-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!FlyAgentA\Unknowcategory\0x00000059_luac 

-- params : ...
-- function num : 0
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 4 then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 2019914798 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 1920168494 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 505) ~= 1952539694 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 541) ~= 3758096448 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((mp.readu_u32)(headerpage, 525), 2)
if (mp.readu_u16)(l_0_0, 1) ~= 19031 then
  return mp.CLEAN
end
local l_0_1 = (mp.readfile)(843 + (mp.readu_u32)(headerpage, 525), 16)
if (mp.crc32)(-1, l_0_1, 1, 16) ~= 343620366 then
  return mp.CLEAN
end
return mp.INFECTED

