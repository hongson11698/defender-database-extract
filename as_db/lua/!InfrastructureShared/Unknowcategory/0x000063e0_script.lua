-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000063e0_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpAPILimitReached") then
  (pe.set_peattribute)("deep_analysis", true)
  ;
  (pe.set_peattribute)("disable_apicall_limit", true)
  ;
  (pe.reemulate)()
end
return mp.LOWFI

