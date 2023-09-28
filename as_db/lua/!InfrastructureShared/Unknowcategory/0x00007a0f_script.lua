-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007a0f_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5 = nil
  end
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    if (string.find)(l_0_0, "\\microsoft.net\\framework") ~= nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC32: Confused about usage of register: R0 in 'UnsetPending'

    if (sysio.IsFileExists)(l_0_0) then
      (bm.add_related_file)(l_0_0)
      -- DECOMPILER ERROR at PC36: Confused about usage of register: R0 in 'UnsetPending'

      ;
      (bm.add_threat_file)(l_0_0)
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

