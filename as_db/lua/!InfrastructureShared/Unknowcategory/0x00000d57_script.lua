-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d57_luac 

-- params : ...
-- function num : 0
if (mp.GetResmgrBasePlugin)() ~= "AutorunInf" then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("Win32/AutoIt") and not (mp.get_mpattribute)("Win32/AutoIt_HSTR1") and not (mp.get_mpattribute)("Win32/AutoIt_HSTR2") and peattributes.isvbnative ~= true and peattributes.isvbpcode ~= true then
  return mp.CLEAN
end
return mp.INFECTED

