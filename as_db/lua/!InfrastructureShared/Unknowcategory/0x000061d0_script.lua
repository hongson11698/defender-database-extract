-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000061d0_luac 

-- params : ...
-- function num : 0
if (pe.isdynamic_va)(pevars.sigaddr) and (pe.query_import)(pe.IMPORT_STATIC, 1589549540) ~= 0 then
  return mp.INFECTED
end
return mp.CLEAN

