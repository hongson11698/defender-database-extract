-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2c787b68d\0x0000525f_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 5000000 and (hstrlog[1]).matched then
  return mp.INFECTED
end
return mp.CLEAN

