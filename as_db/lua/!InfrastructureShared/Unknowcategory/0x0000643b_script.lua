-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000643b_luac 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.getfilesize)() < 338000 then
  (pe.set_peattribute)("hstr_exhaustive", true)
  ;
  (pe.reemulate)()
  return mp.INFECTED
end
return mp.CLEAN

