-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\16278288e\0x0000745d_luac 

-- params : ...
-- function num : 0
if (((((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (mp.getfilesize)() < 250000) and 0 + 1 + 1 + 1 + 1 + 1 == 5 then
  return mp.INFECTED
end
return mp.CLEAN

