-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFeatureRPFEh\0x0000042b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetMOTWZone)()
if not l_0_0 or l_0_0 < 3 then
  return mp.CLEAN
end
local l_0_1 = (mp.GetCertificateInfo)()
if not l_0_1 or next(l_0_1) then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("MpInternal_FeatureRPFMsvcEh")
;
(mp.set_mpattributeex)("RPF:MSVC:FunctionSizeThreshold", 16384)
;
(mp.set_mpattributeex)("RPF:MSVC:FunctionStackThreshold", 1024)
;
(mp.set_mpattribute)("MpInternal_FeatureRPFDwarfEh")
;
(mp.set_mpattributeex)("RPF:DWARF:FunctionSizeThreshold", 16384)
return mp.CLEAN

