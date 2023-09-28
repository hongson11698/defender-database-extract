-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\101b329017b77\0x000080e6_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC15: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_3 = nil
  if checkFileLastWriteTime(l_0_3, 6000) == false then
    return mp.CLEAN
  end
  local l_0_4 = (sysio.GetFileLastWriteTime)(l_0_0)
  -- DECOMPILER ERROR at PC36: Overwrote pending register: R2 in 'AssignReg'

  if (this_sigattrlog[5]).matched then
    local l_0_5 = nil
    if isnull(l_0_5) or isnull((bm.GetOverallTrafficVolumes)()) then
      return mp.CLEAN
    end
    if tonumber(l_0_5.Bout) < 1048576 or ((bm.GetOverallTrafficVolumes)()).outgoing_req < 10485760 then
      return mp.CLEAN
    end
    add_parents()
    reportRelatedBmHits()
    addOverallNetworkVolume()
    ;
    (bm.add_related_string)("SuspiciosProcessAge", l_0_4, bm.RelatedStringBMReport)
    TrackPidAndTechniqueBM("BM", "T1567", "ExfilOverWeb")
    return mp.INFECTED
  end
end

