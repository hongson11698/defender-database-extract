-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b2e_luac 

-- params : ...
-- function num : 0
if peattributes.ismsil ~= true then
  return mp.CLEAN
end
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
local l_0_0 = (pe.get_versioninfo)()
if l_0_0.OriginalFilename ~= nil and (l_0_0.OriginalFilename):lower() == "sync.exe" and l_0_0.InternalName ~= nil and (l_0_0.InternalName):lower() == "sync.exe" and l_0_0.ProductVersion ~= nil and (l_0_0.ProductVersion):lower() == "0.0.0.0" then
  return mp.INFECTED
end
return mp.CLEAN

