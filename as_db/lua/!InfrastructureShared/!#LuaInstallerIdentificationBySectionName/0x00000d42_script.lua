-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaInstallerIdentificationBySectionName\0x00000d42_luac 

-- params : ...
-- function num : 0
if (string.find)(tostring((pesecs[pehdr.NumberOfSections]).Name), "_winzip_", 1, true) ~= nil then
  (mp.set_mpattribute)("LUA:WinZip_winsfx")
  return mp.INFECTED
end
return mp.CLEAN

