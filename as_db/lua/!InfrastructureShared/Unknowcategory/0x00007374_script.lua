-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007374_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 339417 then
  return mp.CLEAN
end
if (mp.get_mpattribute)("MpAPILimitReached") then
  (pe.set_peattribute)("disable_apicall_limit", true)
end
;
(pe.set_peattribute)("deep_analysis", true)
;
(pe.reemulate)()
return mp.INFECTED

