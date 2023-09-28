-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\63780bc24\0x00005d10_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
;
(pe.set_peattribute)("hstr_exhaustive", true)
;
(pe.reemulate)()
return mp.CLEAN

