-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000068f_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 16 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 12 then
  (mp.set_mpattribute)("HSTR:BrowserModifier:Win32/CrassercueSP.A")
end
if not (mp.get_mpattribute)("do_exhaustivehstr_rescan") then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
return mp.CLEAN

