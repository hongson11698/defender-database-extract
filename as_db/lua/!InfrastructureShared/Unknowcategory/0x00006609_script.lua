-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006609_luac 

-- params : ...
-- function num : 0
(pe.set_peattribute)("enable_vmm_grow", true)
;
(pe.set_peattribute)("deep_analysis", true)
;
(pe.set_peattribute)("disable_seh_limit", true)
;
(pe.set_peattribute)("disable_apicall_limit", true)
;
(pe.reemulate)()
return mp.INFECTED

