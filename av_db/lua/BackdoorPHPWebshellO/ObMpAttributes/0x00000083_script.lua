-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\BackdoorPHPWebshellO\ObMpAttributes\0x00000083_luac 

-- params : ...
-- function num : 0
if (mp.crc32)(0, headerpage, 1, 3) == 3665532023 then
  return mp.INFECTED
end
return mp.CLEAN

