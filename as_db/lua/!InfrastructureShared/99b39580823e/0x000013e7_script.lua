-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\99b39580823e\0x000013e7_luac 

-- params : ...
-- function num : 0
local l_0_0 = "remote_file_created_taint"
local l_0_1 = nil
if (this_sigattrlog[2]).matched then
  l_0_1 = (this_sigattrlog[2]).utf8p1
end
if l_0_1 ~= nil and isTainted(l_0_1, l_0_0) then
  TrackPidAndTechniqueBM("BM", "T1562.004", "DefenseEvasion")
  return mp.INFECTED
end
return mp.CLEAN

