-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaWormWin32Rebhip!obfmz\0x00000c6f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 16192 or l_0_0 > 2097152 then
  return mp.CLEAN
end
if (mp.crc32)(0, headerpage, 1, 16) == 870557218 then
  return mp.INFECTED
end
return mp.CLEAN

