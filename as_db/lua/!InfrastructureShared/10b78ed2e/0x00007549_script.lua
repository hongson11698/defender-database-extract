-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\10b78ed2e\0x00007549_luac 

-- params : ...
-- function num : 0
if ((((((((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched) and not (hstrlog[1]).matched) or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (mp.getfilesize)() < 900000) and 0 + 1 + 1 + 1 >= 1) or 0 + 1 + 1 + 1 == 3 then
  return mp.INFECTED
end
return mp.CLEAN

