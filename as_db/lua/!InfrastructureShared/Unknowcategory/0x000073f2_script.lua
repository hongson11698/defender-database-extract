-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000073f2_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 2 and (hstrlog[1]).matched then
  return mp.INFECTED
end
;
(pe.set_peattribute)("hstr_exhaustive", true)
;
(pe.reemulate)()
;
(mp.set_mpattribute)("HSTR:VirTool:Win64/Rovnix.C")
return mp.CLEAN
