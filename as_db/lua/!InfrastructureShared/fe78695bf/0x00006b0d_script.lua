-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\fe78695bf\0x00006b0d_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 41 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT == 40 then
  (mp.set_mpattribute)("MpPreemptiveMultiTasking")
  ;
  (pe.reemulate)()
end
if mp.HSTR_WEIGHT >= 30 then
  return mp.LOWFI
end
return mp.CLEAN

