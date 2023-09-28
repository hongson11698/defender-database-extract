-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000056d4_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0.OriginalFilename ~= nil and (l_0_0.OriginalFilename):lower() == "schedctl.dll" then
  return mp.INFECTED
end
return mp.CLEAN

