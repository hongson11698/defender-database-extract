-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006dd6_luac 

-- params : ...
-- function num : 0
(pe.set_peattribute)("hstr_exhaustive", true)
;
(pe.reemulate)()
;
(mp.set_mpattribute)("do_deep_rescan")
;
(pe.set_peattribute)("disable_apicall_limit", true)
if mp.HSTR_WEIGHT == 2 then
  return mp.INFECTED
end
return mp.LOWFI

