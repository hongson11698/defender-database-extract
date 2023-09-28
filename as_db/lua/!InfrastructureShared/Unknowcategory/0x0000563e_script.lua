-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000563e_luac 

-- params : ...
-- function num : 0
if peattributes.dt_error_not_enough_memory then
  (mp.set_mpattribute)("do_vmmgrow_rescan")
  return mp.LOWFI
end
return mp.CLEAN

