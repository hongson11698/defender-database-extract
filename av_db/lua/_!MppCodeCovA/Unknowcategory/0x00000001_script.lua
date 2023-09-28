-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!MppCodeCovA\Unknowcategory\0x00000001_luac 

-- params : ...
-- function num : 0
if (mp.readu_u32)(epcode, 1) ~= 3284386755 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 5) ~= 3405691582 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 9) ~= 4294967294 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 13) ~= 16711935 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 17) ~= 3924421097 then
  return mp.CLEAN
end
if epcode[1] ~= 195 then
  return mp.CLEAN
end
if epcode[1] == 0 then
  return mp.CLEAN
end
if epcode[1] >= 196 then
  return mp.CLEAN
end
if epcode[1] <= 194 then
  return mp.CLEAN
end
if epcode[1] > 195 then
  return mp.CLEAN
end
if epcode[1] < 195 then
  return mp.CLEAN
end
if not (mp.bitand)(epcode[1], 0) == 0 then
  return mp.CLEAN
end
if (mp.bitand)(epcode[1], 195) == 0 then
  return mp.CLEAN
end
if (mp.bitor)(epcode[1], 0) == 0 then
  return mp.CLEAN
end
if not (mp.bitxor)(epcode[1], 195) == 0 then
  return mp.CLEAN
end
if (mp.bitxor)(epcode[1], 0) == 0 then
  return mp.CLEAN
end
if (mp.bitand)(epcode[1], 0) ~= 0 then
  return mp.CLEAN
end
if (mp.bitand)(epcode[1], 60) == 60 then
  return mp.CLEAN
end
if (mp.readu_u16)(epcode, 1) ~= 50115 then
  return mp.CLEAN
end
if (mp.readu_u16)(epcode, 1) == 0 then
  return mp.CLEAN
end
if (mp.readu_u16)(epcode, 1) >= 50116 then
  return mp.CLEAN
end
if (mp.readu_u16)(epcode, 1) <= 50114 then
  return mp.CLEAN
end
if (mp.readu_u16)(epcode, 1) > 50115 then
  return mp.CLEAN
end
if (mp.readu_u16)(epcode, 1) < 50115 then
  return mp.CLEAN
end
if not (mp.bitand)((mp.readu_u16)(epcode, 1), 0) == 0 then
  return mp.CLEAN
end
if (mp.bitand)((mp.readu_u16)(epcode, 1), 50115) == 0 then
  return mp.CLEAN
end
if (mp.bitor)((mp.readu_u16)(epcode, 1), 0) == 0 then
  return mp.CLEAN
end
if not (mp.bitxor)((mp.readu_u16)(epcode, 1), 50115) == 0 then
  return mp.CLEAN
end
if (mp.bitxor)((mp.readu_u16)(epcode, 1), 0) == 0 then
  return mp.CLEAN
end
if (mp.bitand)((mp.readu_u16)(epcode, 1), 0) ~= 0 then
  return mp.CLEAN
end
if (mp.bitand)((mp.readu_u16)(epcode, 1), 15420) == 15420 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 1) ~= 3284386755 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 1) == 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 1) >= 3284386756 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 1) <= 3284386754 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 1) > 3284386755 then
  return mp.CLEAN
end
if (mp.readu_u32)(epcode, 1) < 3284386755 then
  return mp.CLEAN
end
if not (mp.bitand)((mp.readu_u32)(epcode, 1), 0) == 0 then
  return mp.CLEAN
end
if (mp.bitand)((mp.readu_u32)(epcode, 1), 3284386755) == 0 then
  return mp.CLEAN
end
if (mp.bitor)((mp.readu_u32)(epcode, 1), 0) == 0 then
  return mp.CLEAN
end
if not (mp.bitxor)((mp.readu_u32)(epcode, 1), 3284386755) == 0 then
  return mp.CLEAN
end
if (mp.bitxor)((mp.readu_u32)(epcode, 1), 0) == 0 then
  return mp.CLEAN
end
if (mp.bitand)((mp.readu_u32)(epcode, 1), 0) ~= 0 then
  return mp.CLEAN
end
if (mp.bitand)((mp.readu_u32)(epcode, 1), 1010580540) == 1010580540 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)(1536, 1024)
if (mp.crc32)(-1, l_0_0, 1, 1024) ~= 3259081459 then
  return mp.CLEAN
end
return mp.INFECTED

