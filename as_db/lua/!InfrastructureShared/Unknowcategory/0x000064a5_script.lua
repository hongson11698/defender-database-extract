-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000064a5_luac 

-- params : ...
-- function num : 0
if ((mp.get_mpattribute)("RPF:XlsUnknownSheetVeryHidden") and (mp.get_mpattribute)("RPF:XlsAbnormalSheetStateBits")) or (mp.get_mpattribute)("RPF:XlsWorksheetHidden") then
  return mp.INFECTED
end
return mp.CLEAN

