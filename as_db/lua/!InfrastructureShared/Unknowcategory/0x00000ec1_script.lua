-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000ec1_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("//GIOAVZIPinTopLevelZIP") and not (mp.get_mpattribute)("//GIOAVPEInZIPinTopLevelZIP") then
  (mp.set_mpattribute)("Lua:IOAVPEInZIPinTopLevelZIP")
  ;
  (mp.set_mpattribute)("//GIOAVPEInZIPinTopLevelZIP")
  ;
  (mp.set_mpattribute)("MpNonCachedLowfi")
end
if (mp.get_mpattribute)("//GIOAVZIPinTopLevelUncompressedZip") and not (mp.get_mpattribute)("//GIOAVPEInZIPinTopLevelUncompressedZip") then
  (mp.set_mpattribute)("Lua:IOAVPEInZIPinTopLevelUncompressedZip")
  ;
  (mp.set_mpattribute)("//GIOAVPEInZIPinTopLevelUncompressedZip")
  ;
  (mp.set_mpattribute)("MpNonCachedLowfi")
end
return mp.CLEAN

