-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000e26_luac 

-- params : ...
-- function num : 0
if peattributes.is_delphi then
  return mp.CLEAN
end
if not peattributes.isexe then
  return mp.CLEAN
end
if (mp.ispackedwith)("AutoHotKey_+") or (mp.ispackedwith)("UPX") then
  return mp.CLEAN
end
if (mp.get_mpattributesubstring)("PESTATIC:cleanstub_autoitv") then
  return mp.CLEAN
end
if (mp.ispackedwith)("AutoIt_+") or (mp.get_mpattributesubstring)("Win32/AutoIt") then
  return mp.INFECTED
end
return mp.CLEAN

