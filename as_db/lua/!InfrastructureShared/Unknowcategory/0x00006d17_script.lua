-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006d17_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 13 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 12 then
  (mp.set_mpattribute)("HSTR:Adware:Win32/ZoomyLib.D")
end
if not (mp.get_mpattribute)("do_exhaustivehstr_rescan") then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
return mp.CLEAN

