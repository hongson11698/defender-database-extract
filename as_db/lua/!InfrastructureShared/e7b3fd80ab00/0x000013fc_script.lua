-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\e7b3fd80ab00\0x000013fc_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
TrackPidAndTechniqueBM("BM", "T1552.001", "CredentialAccess")
TrackPidAndTechniqueBM("BM", "T1074", "Collection_DataStaged")
addRelatedProcess()
if isTainted(l_0_0, "remote_file_created_taint") then
  return mp.INFECTED
end
return mp.CLEAN

