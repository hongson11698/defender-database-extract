-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\df787459a\0x00005b6c_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 50000 or (mp.getfilesize)() > 100000 then
  return mp.CLEAN
end
if peattributes.isdriver then
  return mp.INFECTED
end
return mp.CLEAN

