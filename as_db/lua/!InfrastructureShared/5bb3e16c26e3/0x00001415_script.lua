-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb3e16c26e3\0x00001415_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 then
    local l_0_0 = (this_sigattrlog[2]).utf8p2
    if not (string.match)(l_0_0, "^/var/www/") then
      return mp.CLEAN
    end
    ;
    (bm.add_related_file)(l_0_0)
  end
  addRelatedProcess()
  TrackPidAndTechniqueBM("BM", "T1190", "InitialAccess_www")
  return mp.INFECTED
end

