-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000796f_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("RPF:XlsUnknownSheetVeryHidden") and (mp.get_mpattribute)("RPF:XlsMacroSheetHidden") and (mp.get_mpattribute)("MpExcelFormulaRoutines") and (mp.get_mpattribute)("RPF:XlsAbnormalSheetStateBits") and (mp.get_mpattribute)("BM_OLE_FILE") and (mp.get_mpattribute)("RPF:XlsWorksheetHidden") then
  return mp.INFECTED
end
return mp.CLEAN

