-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\101788a2c\0x0000652d_luac 

-- params : ...
-- function num : 0
if (((hstrlog[1]).matched and not (hstrlog[2]).matched) or (mp.getfilesize)() < 300000) and (0 + 1 + 1 == 2 or (hstrlog[3]).matched) then
  return mp.INFECTED
end
return mp.CLEAN

