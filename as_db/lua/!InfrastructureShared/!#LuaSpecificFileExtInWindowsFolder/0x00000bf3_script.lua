-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaSpecificFileExtInWindowsFolder\0x00000bf3_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("Lua:BATExt") then
  (mp.set_mpattribute)("Lua:BatFileInWindowsFolder")
end
return mp.CLEAN

