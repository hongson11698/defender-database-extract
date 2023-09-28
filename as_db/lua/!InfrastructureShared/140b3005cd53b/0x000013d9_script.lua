-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\140b3005cd53b\0x000013d9_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  (bm.trigger_sig)("DroppedArchive", (this_sigattrlog[1]).utf8p1)
  TrackPidAndTechniqueBM("BM", "T1560", "Collection_ArchiveData")
end
return mp.CLEAN

