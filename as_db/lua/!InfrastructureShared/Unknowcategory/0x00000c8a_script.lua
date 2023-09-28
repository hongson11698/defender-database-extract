-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000c8a_luac 

-- params : ...
-- function num : 0
if (string.lower)((string.sub)((mp.getfilename)(), -3)) ~= "url" then
  return mp.CLEAN
end
if (mp.UfsGetMetadataBool)("Lua:SingleFileInZip", true) ~= 0 or not "Lua:SingleFileInZip" then
  return mp.CLEAN
end
return mp.INFECTED

