-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1af7829c2\0x00006d74_luac 

-- params : ...
-- function num : 0
if (((((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (mp.getfilesize)() < 1150000) and 0 + 1 + 1 + 1 + 1 == 4 then
  return mp.INFECTED
end
return mp.CLEAN

