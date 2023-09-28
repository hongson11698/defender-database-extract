-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_ARusemgen!A\ObMpAttributes\0x00000075_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2300 then
  return mp.INFECTED
end
return mp.CLEAN

