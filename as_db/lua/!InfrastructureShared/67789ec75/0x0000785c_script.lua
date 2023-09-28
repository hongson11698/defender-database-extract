-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\67789ec75\0x0000785c_luac 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
if not peattributes.amd64_image then
  return mp.CLEAN
end
if not peattributes.hasexports then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 9 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT < 9 then
  (pe.set_peattribute)("hstr_exhaustive", true)
  ;
  (pe.reemulate)()
end
return mp.CLEAN

