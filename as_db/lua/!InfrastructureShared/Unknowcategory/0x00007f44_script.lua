-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f44_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched then
  local l_0_0, l_0_1, l_0_2 = nil
else
  do
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC18: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_0 == nil or l_0_0 == "" then
      return mp.CLEAN
    end
    local l_0_3 = nil
    -- DECOMPILER ERROR at PC32: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC35: Confused about usage of register: R1 in 'UnsetPending'

    if nil == nil or nil == "" then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC42: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC48: Confused about usage of register: R1 in 'UnsetPending'

    if (sysio.IsFileExists)(nil) then
      (bm.add_related_file)(nil)
    end
    -- DECOMPILER ERROR at PC58: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC61: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC65: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC71: Confused about usage of register: R1 in 'UnsetPending'

    if (this_sigattrlog[5]).matched and nil ~= nil and nil ~= "" and (sysio.IsFileExists)(nil) then
      (bm.add_related_file)(nil)
    end
    -- DECOMPILER ERROR at PC81: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC84: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC88: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC94: Confused about usage of register: R1 in 'UnsetPending'

    if (this_sigattrlog[6]).matched and nil ~= nil and nil ~= "" and (sysio.IsFileExists)(nil) then
      (bm.add_related_file)(nil)
    end
    return mp.INFECTED
  end
end

