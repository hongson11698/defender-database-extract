-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\10678f17a\0x000074d4_luac 

-- params : ...
-- function num : 0
if (((((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (mp.getfilesize)() < 30000) and 0 + 1 + 1 == 2 and ((hstrlog[3]).matched or 0 + 1 + 1 == 2) then
  return mp.INFECTED
end
return mp.CLEAN

