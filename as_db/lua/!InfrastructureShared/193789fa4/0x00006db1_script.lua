-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\193789fa4\0x00006db1_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC37: Unhandled construct in 'MakeBoolean' P3

if (hstrlog[1]).matched or (((hstrlog[4]).matched and (hstrlog[5]).matched) or (hstrlog[7]).matched) then
  return mp.INFECTED
end
return mp.CLEAN

