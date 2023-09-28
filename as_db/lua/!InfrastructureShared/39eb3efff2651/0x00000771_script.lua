-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\39eb3efff2651\0x00000771_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[5]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[6]).matched or (this_sigattrlog[7]).matched then
      local l_0_1 = ((this_sigattrlog[6]).utf8p1):match("(%w+%.exe)$")
    else
    end
    -- DECOMPILER ERROR at PC63: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[8]).matched or (this_sigattrlog[9]).matched then
        local l_0_2 = ((this_sigattrlog[8]).utf8p1):match("(%w+%.exe)$")
      end
      -- DECOMPILER ERROR at PC64: Confused about usage of register: R0 in 'UnsetPending'

      if not l_0_2 then
        return mp.CLEAN
      end
      local l_0_3 = nil
      -- DECOMPILER ERROR at PC77: Overwrote pending register: R1 in 'AssignReg'

      -- DECOMPILER ERROR at PC86: Overwrote pending register: R1 in 'AssignReg'

      -- DECOMPILER ERROR at PC95: Overwrote pending register: R1 in 'AssignReg'

      -- DECOMPILER ERROR at PC104: Overwrote pending register: R1 in 'AssignReg'

      -- DECOMPILER ERROR at PC113: Overwrote pending register: R1 in 'AssignReg'

      -- DECOMPILER ERROR at PC122: Overwrote pending register: R1 in 'AssignReg'

      if ((((((this_sigattrlog[10]).matched and not (this_sigattrlog[11]).matched) or (this_sigattrlog[12]).matched) and not (this_sigattrlog[13]).matched) or (this_sigattrlog[14]).matched) and not (this_sigattrlog[15]).matched) or not nil then
        return mp.CLEAN
      end
      ;
      (bm.add_related_string)("serverName", l_0_3, bm.RelatedStringBMReport)
      -- DECOMPILER ERROR at PC138: Confused about usage of register: R1 in 'UnsetPending'

      ;
      (bm.add_related_string)("tamperingAlert", nil, bm.RelatedStringBMReport)
      reportSessionInformationInclusive()
      add_parents()
      bm_AddRelatedFileFromCommandLine("bm")
      return mp.INFECTED
    end
  end
end

