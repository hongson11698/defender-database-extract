-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\e1789c523\0x00006d89_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 12 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 1 then
  (mp.set_mpattribute)("HSTR:Adware:Win32/EoRezo")
end
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan_onescan")
;
(mp.set_mpattribute)("do_vmmgrow_rescan")
return mp.CLEAN

