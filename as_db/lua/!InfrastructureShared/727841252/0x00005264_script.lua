-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\727841252\0x00005264_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched and (mp.getfilesize)() < 5000000 then
  return mp.INFECTED
end
return mp.CLEAN

