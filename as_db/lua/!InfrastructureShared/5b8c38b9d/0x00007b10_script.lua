-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5b8c38b9d\0x00007b10_luac 

-- params : ...
-- function num : 0
if (((((hstrlog[4]).matched and not (hstrlog[5]).matched) or (hstrlog[6]).matched) and not (hstrlog[7]).matched) or (mp.getfilesize)() > 1000000) and (mp.getfilesize)() < 10000000 and (hstrlog[1]).hitcount > 20 and (hstrlog[2]).hitcount > 15 and (hstrlog[3]).hitcount > 15 and 0 + 1 + 1 + 1 + 1 == 4 then
  return mp.INFECTED
end
return mp.CLEAN

