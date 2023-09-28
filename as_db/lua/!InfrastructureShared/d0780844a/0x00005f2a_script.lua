-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d0780844a\0x00005f2a_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 4 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 2 then
  (mp.set_mpattribute)("HSTR:Ardamax")
  return mp.LOWFI
end
return mp.CLEAN

