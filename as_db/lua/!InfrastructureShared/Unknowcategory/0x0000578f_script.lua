-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000578f_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 2 then
  (mp.set_mpattribute)("HSTR:Trojan:Win32/Tracur_01")
end
;
(mp.set_mpattribute)("do_deep_rescan")
return mp.INFECTED

