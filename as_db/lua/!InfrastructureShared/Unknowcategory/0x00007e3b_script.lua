-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e3b_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if peattributes.ismsil then
  (mp.set_mpattribute)("SIGATTR:PossibleMSILDownloader.A")
  return mp.INFECTED
end
if peattributes.isvbpcode or peattributes.isvbnative then
  (mp.set_mpattribute)("SIGATTR:PossibleVBDownloader.A")
  return mp.INFECTED
end
if peattributes.is_delphi or (mp.get_mpattribute)("SIGATTR:DelphiFile") or (mp.get_mpattribute)("HSTR:Win32/DelphiFile") then
  (mp.set_mpattribute)("SIGATTR:PossibleDelphiDownloader.A")
  return mp.INFECTED
end
return mp.INFECTED

