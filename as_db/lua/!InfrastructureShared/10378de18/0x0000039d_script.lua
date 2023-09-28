-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\10378de18\0x0000039d_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 8 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan")
return mp.CLEAN

