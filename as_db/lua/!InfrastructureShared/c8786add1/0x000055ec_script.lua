-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\c8786add1\0x000055ec_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 4 then
  return mp.INFECTED
else
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
return mp.CLEAN

