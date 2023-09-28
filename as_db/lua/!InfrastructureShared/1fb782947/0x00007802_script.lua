-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1fb782947\0x00007802_luac 

-- params : ...
-- function num : 0
if (((((((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (hstrlog[5]).matched) and not (hstrlog[6]).matched) or (mp.getfilesize)() < 3000000) and 0 + 1 + 1 + 1 + 1 + 1 + 1 >= 3 then
  return mp.INFECTED
end
return mp.CLEAN

