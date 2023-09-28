-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000746c_luac 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.get_mpattribute)("MpCPlApplet") and ((mp.get_mpattribute)("SIGATTR:DelphiFile") or (mp.get_mpattribute)("HSTR:Win32/DelphiFile")) then
  (mp.set_mpattribute)("SIGATTR:Reboon_Lowfi")
  return mp.INFECTED
end
return mp.CLEAN

