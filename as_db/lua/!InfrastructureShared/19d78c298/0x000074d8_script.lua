-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\19d78c298\0x000074d8_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 15000000 and ((hstrlog[1]).VA == 128 + pehdr.ImageBase or (hstrlog[2]).VA == 128 + pehdr.ImageBase or (hstrlog[3]).VA == 128 + pehdr.ImageBase or (hstrlog[4]).VA == 128 + pehdr.ImageBase) then
  return mp.INFECTED
end
return mp.CLEAN

