-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaCmdSingleFileInsideZi\0x00000c46_luac 

-- params : ...
-- function num : 0
if (mp.UfsGetMetadataBool)("Lua:FileInZip", true) ~= 0 or not "Lua:FileInZip" then
  return mp.CLEAN
end
if (mp.UfsGetMetadataBool)("Lua:SingleFileInZip", true) ~= 0 or not "Lua:SingleFileInZip" then
  return mp.CLEAN
end
return mp.INFECTED
