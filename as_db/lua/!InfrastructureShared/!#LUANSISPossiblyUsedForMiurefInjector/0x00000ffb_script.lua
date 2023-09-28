-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUANSISPossiblyUsedForMiurefInjector\0x00000ffb_luac 

-- params : ...
-- function num : 0
if peattributes.isexe == false or peattributes.isdamaged or peattributes.arm_image or peattributes.hasappendeddata == false then
  return mp.CLEAN
end
if ((mp.get_mpattribute)("HSTR:NSIS_Installer") == false and (mp.get_mpattribute)("HSTR:NSIS.gen!A") == false) or (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
local l_0_0 = pehdr.NumberOfSections
if l_0_0 < 1 then
  return mp.CLEAN
end
local l_0_1 = (pesecs[l_0_0]).PointerToRawData + (pesecs[l_0_0]).SizeOfRawData
local l_0_2 = (mp.getfilesize)()
if l_0_2 < l_0_1 then
  return mp.CLEAN
end
local l_0_3 = l_0_2 - l_0_1
if l_0_3 < 94208 or l_0_3 > 143360 then
  return mp.CLEAN
end
return mp.INFECTED

