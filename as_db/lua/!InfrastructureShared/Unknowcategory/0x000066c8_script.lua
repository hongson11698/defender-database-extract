-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000066c8_luac 

-- params : ...
-- function num : 0
if (pe.isdynamic_va)(pevars.sigaddr) then
  if (pe.query_import)(pe.IMPORT_STATIC, 1589549540) ~= 0 then
    return mp.INFECTED
  end
  if (pe.query_import)(pe.IMPORT_STATIC, 3150467781) ~= 0 then
    return mp.INFECTED
  end
end
return mp.CLEAN

