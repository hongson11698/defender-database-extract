-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007405_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("BM_TORRENT_FILE") and (string.find)((string.lower)((mp.getfilename)()), "msoffice", 1, true) ~= nil and (string.find)((string.lower)((mp.getfilename)()), "activate", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

