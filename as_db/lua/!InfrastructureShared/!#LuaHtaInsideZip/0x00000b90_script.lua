-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaHtaInsideZip\0x00000b90_luac 

-- params : ...
-- function num : 0
if (mp.UfsGetMetadataBool)("Lua:FileInZip", true) ~= 0 or not "Lua:FileInZip" then
  return mp.CLEAN
end
return mp.INFECTED

