-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFileExeInRar\0x000055cb_luac 

-- params : ...
-- function num : 0
if (mp.UfsGetMetadataBool)("Lua:FileInRar", true) ~= 0 or not "Lua:FileInRar" then
  return mp.CLEAN
end
return mp.INFECTED

