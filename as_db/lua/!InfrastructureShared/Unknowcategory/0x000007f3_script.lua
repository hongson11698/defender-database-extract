-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000007f3_luac 

-- params : ...
-- function num : 0
if peattributes.isexe == false or peattributes.no_imports == true then
  return mp.CLEAN
end
if (pe.query_import)(pe.IMPORT_STATIC, 2358328843) ~= 0 or (pe.query_import)(pe.IMPORT_STATIC, 3567207411) ~= 0 then
  return mp.INFECTED
end
return mp.CLEAN

