-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000599b_luac 

-- params : ...
-- function num : 0
if (pe.query_import)(pe.IMPORT_STATIC, 823159601) == 0 or (pe.query_import)(pe.IMPORT_STATIC, 680197589) == 0 then
  return mp.CLEAN
end
return mp.INFECTED

