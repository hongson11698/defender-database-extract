-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!RenoFlossA!dha\Unknowcategory\0x0000008f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 1048576 or l_0_0 < 4096 then
  return mp.CLEAN
end
if headerpage[1] == 219 and (mp.readu_u16)(headerpage, 4) == 26313 and headerpage[6] == 185 and (mp.readu_u32)(headerpage, 9) == 4294967272 and headerpage[13] == 255 and headerpage[21] == 49 and headerpage[22] == headerpage[25] and headerpage[23] == headerpage[26] and headerpage[24] == 3 and headerpage[27] == 131 then
  return mp.INFECTED
end
return mp.CLEAN

