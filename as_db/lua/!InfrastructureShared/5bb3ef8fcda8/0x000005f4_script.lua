-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb3ef8fcda8\0x000005f4_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil and isTainted(l_0_0, "remote_file_created_taint") then
  addRelatedProcess()
  reportRelatedBmHits()
  TrackPidAndTechniqueBM("BM", "T1105", "CommandAndControl_IngressToolTransfer_RemoteFileExecution")
  return mp.INFECTED
end
return mp.CLEAN

