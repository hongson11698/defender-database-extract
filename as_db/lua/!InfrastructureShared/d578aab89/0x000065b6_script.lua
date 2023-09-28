-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d578aab89\0x000065b6_luac 

-- params : ...
-- function num : 0
if (((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (mp.getfilesize)() < 500000) and 0 + 1 + 1 + 1 == 3 then
  return mp.INFECTED
end
return mp.CLEAN

