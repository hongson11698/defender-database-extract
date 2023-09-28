-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000796b_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") and (mp.getfilesize)() < 9000000 and ((mp.get_mpattribute)("HSTR:Win32/DelphiFile") or (mp.get_mpattribute)("SIGATTR:DelphiFile") or peattributes.is_delphi or peattributes.isvbpcode or peattributes.isvbnative) then
  return mp.INFECTED
end
return mp.CLEAN

