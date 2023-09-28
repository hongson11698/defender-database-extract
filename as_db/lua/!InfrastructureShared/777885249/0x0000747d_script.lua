-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\777885249\0x0000747d_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 11 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 8 and (mp.get_mpattribute)("SIGATTR:DelphiFile") then
  (pe.set_peattribute)("hstr_exhaustive", true)
  ;
  (pe.reemulate)()
  return mp.SUSPICIOUS
end
return mp.CLEAN

