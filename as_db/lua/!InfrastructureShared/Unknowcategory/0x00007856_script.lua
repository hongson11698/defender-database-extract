-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007856_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 ~= nil and l_0_0 > 2048000 then
  return mp.CLEAN
end
local l_0_1 = (pe.get_versioninfo)()
if l_0_1 ~= nil and l_0_1.OriginalFilename ~= nil and (l_0_1.OriginalFilename):lower() == "sync.exe" and l_0_1.InternalName ~= nil and (l_0_1.InternalName):lower() == "sync.exe" and l_0_1.ProductVersion ~= nil and (l_0_1.ProductVersion):lower() == "0.0.0.0" then
  return mp.INFECTED
end
return mp.CLEAN

