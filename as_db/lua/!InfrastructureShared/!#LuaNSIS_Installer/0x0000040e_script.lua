-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaNSIS_Installer\0x0000040e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.sub)(l_0_0, -13) == "uninstall.exe" or (string.sub)(l_0_0, -15) == "uninstaller.exe" or (string.sub)(l_0_0, -10) == "uninst.exe" then
  return mp.CLEAN
end
if (mp.getfilesize)() > 104857600 then
  return mp.CLEAN
end
if not peattributes.isexe then
  return mp.CLEAN
end
return mp.INFECTED

