-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4ab3e3f76a9c\0x000013f4_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
  (bm.trigger_sig)("UPXFileExec", (this_sigattrlog[2]).utf8p1)
  TrackPidAndTechniqueBM("BM", "T1027.002", "DefenseEvasion_SoftwarePacking_mt2023")
  return mp.INFECTED
end
return mp.CLEAN

