-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\8e78fbc0f\0x00005c63_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 4 or mp.HSTR_WEIGHT == 5 then
  return mp.LOWFI
end
if peattributes.ismsil then
  return mp.INFECTED
end
return mp.CLEAN

