-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\3278edc69\0x000061f4_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 3000000 and (hstrlog[1]).matched and (hstrlog[2]).matched and (hstrlog[3]).matched then
  return mp.INFECTED
end
return mp.CLEAN

