-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\117b303d3be02\0x00000621_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[5]).matched or (this_sigattrlog[5]).utf8p1 == nil or (this_sigattrlog[7]).matched) and (this_sigattrlog[7]).utf8p2 ~= nil then
      local l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6 = (this_sigattrlog[5]).utf8p1
    end
    -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC45: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 then
      (bm.add_related_file)(l_0_1)
    end
    TrackPidAndTechniqueBM("BM", "T1040", "Discovery_NetworkCapture_Sniffing_mt2023")
    AddTechniqueGlobal("Discovery_NetworkCapture_Sniffing")
    addRelatedProcess()
    reportRelatedBmHits()
    return mp.INFECTED
  end
end

