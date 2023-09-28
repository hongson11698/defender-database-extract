-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006628_luac 

-- params : ...
-- function num : 0
if not peattributes.no_resources and (pe.contains_va)(3, (hstrlog[1]).VA) and (pesecs[3]).Name == ".data" then
  return mp.INFECTED
end
return mp.CLEAN

