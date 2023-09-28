-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000066e1_luac 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.amd64_image and (mp.getfilesize)() < 371200 then
  (pe.set_peattribute)("hstr_exhaustive", true)
  ;
  (pe.reemulate)()
  return mp.INFECTED
end
return mp.CLEAN

