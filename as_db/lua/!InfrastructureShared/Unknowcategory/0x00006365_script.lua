-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006365_luac 

-- params : ...
-- function num : 0
if (pe.query_import)(pe.IMPORT_STATIC, 2832782153) ~= 0 and (pe.query_import)(pe.IMPORT_STATIC, 3514167808) ~= 0 and (pe.query_import)(pe.IMPORT_STATIC, 1794917727) ~= 0 then
  return mp.INFECTED
end
return mp.CLEAN

