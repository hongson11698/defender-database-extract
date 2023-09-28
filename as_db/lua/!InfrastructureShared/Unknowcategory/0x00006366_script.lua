-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006366_luac 

-- params : ...
-- function num : 0
if (pe.query_import)(pe.IMPORT_STATIC, 3604202544) == 0 or (pe.query_import)(pe.IMPORT_STATIC, 1712054030) == 0 or (pe.query_import)(pe.IMPORT_STATIC, 3310839974) == 0 then
  return mp.CLEAN
end
return mp.INFECTED

