-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\f1b33f93236b\0x00001475_luac 

-- params : ...
-- function num : 0
local l_0_5 = nil
do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = "genb_linux_ransom_meta"
  else
  end
  -- DECOMPILER ERROR at PC19: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4 = "gene_linux_ransom_meta", nil
    else
    end
    if not (this_sigattrlog[4]).matched or "genj_linux_ransom_meta" == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC33: Confused about usage of register: R0 in 'UnsetPending'

    local l_0_6 = nil
    if GetRollingQueueAsHashTable("genj_linux_ransom_meta") == nil then
      return mp.CLEAN
    end
    if (GetRollingQueueAsHashTable("genj_linux_ransom_meta")).appended_ext == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC47: Confused about usage of register: R1 in 'UnsetPending'

    if isKnownRansomExtension((GetRollingQueueAsHashTable("genj_linux_ransom_meta")).appended_ext, true) then
      addRelatedProcess()
      TrackPidAndTechniqueBM("BM", "T1486", "Impact_FileEncryption")
      TerminateParentProcessForLinux()
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

