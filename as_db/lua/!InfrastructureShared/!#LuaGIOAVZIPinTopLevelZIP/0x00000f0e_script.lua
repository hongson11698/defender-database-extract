-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaGIOAVZIPinTopLevelZIP\0x00000f0e_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("//AGGREGATOR:GIOAVTopLevelZIP") and not (mp.get_mpattribute)("//GIOAVZIPinTopLevelZIP") and mp.HEADERPAGE_SZ > 8 and (mp.readu_u32)(headerpage, 1) == 67324752 then
  (mp.set_mpattribute)("//GIOAVZIPinTopLevelZIP")
end
if (mp.get_mpattribute)("//AGGREGATOR:GIOAVTopLevelUncompressedZip") and not (mp.get_mpattribute)("//GIOAVZIPinTopLevelUncompressedZip") and mp.HEADERPAGE_SZ > 8 and (mp.readu_u32)(headerpage, 1) == 67324752 then
  (mp.set_mpattribute)("//GIOAVZIPinTopLevelUncompressedZip")
end
return mp.CLEAN

