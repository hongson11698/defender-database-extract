-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\3a6b3355fc400\0x0000143d_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[13]).matched and (this_sigattrlog[13]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC15: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil or l_0_0 == "" then
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM("BM", "T1560", "Collection_ArchiveData")
  -- DECOMPILER ERROR at PC27: Confused about usage of register: R0 in 'UnsetPending'

  ;
  (bm.add_related_file)(l_0_0)
  -- DECOMPILER ERROR at PC32: Confused about usage of register: R0 in 'UnsetPending'

  ;
  (bm.add_related_string)("archivepath", l_0_0, bm.RelatedStringBMReport)
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end

