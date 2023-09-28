-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\3778c14fb\0x00005260_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 100000 and (hstrlog[1]).matched then
  return mp.INFECTED
end
return mp.CLEAN

