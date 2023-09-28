-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\3e7880d23\0x000061f7_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2000000 and (hstrlog[1]).matched and (hstrlog[2]).matched and (hstrlog[3]).matched then
  return mp.INFECTED
end
return mp.CLEAN

