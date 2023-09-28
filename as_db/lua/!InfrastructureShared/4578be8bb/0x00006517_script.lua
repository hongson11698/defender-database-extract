-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4578be8bb\0x00006517_luac 

-- params : ...
-- function num : 0
if (((hstrlog[2]).matched and not (hstrlog[3]).matched) or (mp.getfilesize)() <= 2000000) and (hstrlog[1]).matched and 0 + 1 + 1 >= 1 then
  return mp.INFECTED
end
return mp.CLEAN

