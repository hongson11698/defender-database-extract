-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\677875b89\0x0000658b_luac 

-- params : ...
-- function num : 0
if (((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (mp.getfilesize)() < 5000000) and 0 + 1 + 1 + 1 >= 1 then
  return mp.INFECTED
end
return mp.CLEAN

