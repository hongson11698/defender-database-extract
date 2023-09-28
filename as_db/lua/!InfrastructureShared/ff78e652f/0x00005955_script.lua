-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\ff78e652f\0x00005955_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 11 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 4 then
  (mp.set_mpattribute)("HSTR:Yalogger")
end
return mp.CLEAN

