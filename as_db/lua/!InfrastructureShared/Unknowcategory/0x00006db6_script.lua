-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006db6_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetUACMetadata)()
if l_0_0 == nil then
  return mp.CLEAN
end
if l_0_0.Type ~= mp.AMSI_UAC_REQUEST_TYPE_COM then
  return mp.CLEAN
end
if (string.lower)((l_0_0.Info).Clsid) ~= "48012511-82cc-48f3-ae5b-40c7401a5a09" then
  return mp.CLEAN
end
return mp.INFECTED

