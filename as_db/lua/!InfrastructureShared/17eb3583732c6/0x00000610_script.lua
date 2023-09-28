-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\17eb3583732c6\0x00000610_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p1 ~= nil then
    local l_0_0 = nil
  end
  local l_0_1 = nil
  if (bm.get_current_process_startup_info)() == nil or ((bm.get_current_process_startup_info)()).ppid == nil or ((bm.get_current_process_startup_info)()).ppid == "" or l_0_1 == nil or l_0_1 == "" then
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM(((bm.get_current_process_startup_info)()).ppid, "T1560.001", "Collection_ArchiveViaUtility_TAR")
  ;
  (bm.trigger_sig)("FileArchiving", l_0_1)
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end

