-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a478d6198\0x00006597_luac 

-- params : ...
-- function num : 0
if (((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (mp.getfilesize)() < 200000) and 0 + 1 + 1 + 1 >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

