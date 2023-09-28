-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a6614d1df\0x000055eb_luac 

-- params : ...
-- function num : 0
if ((hstrlog[1]).matched and (hstrlog[3]).matched) or (hstrlog[2]).matched then
  return mp.INFECTED
end
return mp.CLEAN

