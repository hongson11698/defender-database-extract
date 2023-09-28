-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\10178680f\0x00005bbc_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 7 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 5 then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
return mp.CLEAN

