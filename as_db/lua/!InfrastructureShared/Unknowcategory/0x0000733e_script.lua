-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000733e_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 192512 and (mp.getfilesize)() > 122880 then
  if mp.HSTR_WEIGHT == 3 then
    (mp.set_mpattribute)("Dipsind.C_persist")
    return mp.LOWFI
  end
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  ;
  (pe.reemulate)()
end
return mp.CLEAN

