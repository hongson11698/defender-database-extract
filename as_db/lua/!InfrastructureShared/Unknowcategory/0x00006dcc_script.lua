-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006dcc_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 6 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT > 3 and (mp.get_mpattribute)("HSTR:Fareit.gen") then
  return mp.INFECTED
end
;
(pe.set_peattribute)("hstr_exhaustive", true)
;
(pe.reemulate)()
return mp.LOWFI

