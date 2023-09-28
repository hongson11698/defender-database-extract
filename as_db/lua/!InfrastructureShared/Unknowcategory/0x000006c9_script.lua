-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000006c9_luac 

-- params : ...
-- function num : 0
local l_0_0 = (versioning.GetOrgID)()
if l_0_0 and (string.lower)(l_0_0) == "d7c7c745-195f-4223-9c7a-99fb420fd000" then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("RPF:TopLevelFile") then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.getfilename)())
l_0_1 = (MpCommon.PathToWin32Path)(l_0_1)
local l_0_2 = (MpCommon.GetMountedFileBackingFilePath)(l_0_1)
if l_0_2 then
  return mp.CLEAN
end
local l_0_3 = (pe.get_versioninfo)()
if l_0_3 == nil then
  return mp.CLEAN
end
if l_0_3.OriginalFilename ~= "WerFaultSecure.exe" or l_0_3.InternalName ~= "WerFaultSecure" or l_0_3.FileDescription ~= "Windows Fault Reporting" then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") or l_0_3.CompanyName ~= "Microsoft Corporation" then
  return mp.CLEAN
end
local l_0_4 = (versioning.GetOsVersion)()
if l_0_4 <= 393220 then
  return mp.CLEAN
end
local l_0_5 = (pe.get_fixedversioninfo)()
local l_0_6 = (crypto.shr64)(l_0_5.FileVersion, 48)
if l_0_6 >= 10 then
  return mp.CLEAN
end
local l_0_7 = nil
l_0_7 = (mp.getfilename)()
if l_0_7 == nil then
  return mp.CLEAN
end
l_0_7 = (MpCommon.PathToWin32Path)(l_0_7)
;
(MpCommon.SetOriginalFileName)(l_0_7, "VulnWerFaultSecureExe.exe")
return mp.INFECTED

