-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000160_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetUACMetadata)()
if l_0_0.Type ~= mp.AMSI_UAC_REQUEST_TYPE_COM then
  return mp.FALSE
end
if l_0_0.AutoElevate ~= true then
  return mp.FALSE
end
local l_0_1 = (string.lower)((l_0_0.Info).Clsid)
if l_0_1 == "a6bfea43-501f-456f-a845-983d3ad7b8f0" or l_0_1 == "0f87369f-a4e5-4cfc-bd3e-73e6154572dd" then
  return mp.TRUE
end
return mp.FALSE

