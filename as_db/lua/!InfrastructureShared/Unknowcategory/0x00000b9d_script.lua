-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000b9d_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("MpInternal_IsPliScan") then
  return mp.CLEAN
end
;
(pe.set_peattribute)("disable_dropper_rescan", true)
return mp.CLEAN

