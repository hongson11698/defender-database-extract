-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007dc8_luac 

-- params : ...
-- function num : 0
if not peattributes.isexe or not peattributes.epinfirstsect or (pehdr.NumberOfSections > 7 and ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_RESOURCE]).Size > 4718592 and ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_RESOURCE]).Size < 6291456 and ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_IMPORT]).Size > 2048 and ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_BASERELOC]).Size > 4096) == false then
  (mp.changedetectionname)(268436426)
  return mp.INFECTED
end
do return mp.INFECTED end
-- DECOMPILER ERROR: 3 unprocessed JMP targets

