-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\cd78cba8d\0x00006d12_luac 

-- params : ...
-- function num : 0
if (((not (hstrlog[2]).matched or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (mp.getfilesize)() < 200000) and (hstrlog[1]).matched and 0 + 1 + 1 + 1 >= 1 then
  return mp.INFECTED
end
return mp.CLEAN

