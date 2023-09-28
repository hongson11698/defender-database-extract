-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\637818e65\0x000049f4_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched and not (hstrlog[2]).matched then
  return mp.INFECTED
end
return mp.CLEAN

