-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\32b33b45edd1\0x00000626_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil and isTainted(l_0_0, "remote_file_chmodexec") then
  taint(l_0_0, "susp_remotefile_execution", 3600)
  TrackPidAndTechniqueBM("BM", "T1105", "CommandAndControl_IngressToolTransfer_SuspiciousRemoteFileExecution")
  TrackPidAndTechniqueBM("BM", "T1564", "DefenseEvasion_Hiddenfiles_SuspiciousRemoteFileExecution")
  addRelatedProcess()
  reportRelatedBmHits()
  if (sysio.IsFileExists)(l_0_0) then
    (bm.add_threat_file)(l_0_0)
  end
  return mp.INFECTED
end
return mp.CLEAN

