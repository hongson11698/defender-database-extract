-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000080b1_luac 

-- params : ...
-- function num : 0
local l_0_4 = nil
local l_0_5 = (nri.IsResponse)()
if l_0_5 then
  local l_0_0, l_0_1, l_0_2, l_0_3 = 16
else
  do
    -- DECOMPILER ERROR at PC14: Overwrote pending register: R0 in 'AssignReg'

    if not l_0_4 then
      return mp.CLEAN
    end
    local l_0_6, l_0_7, l_0_8, l_0_9 = , (MpCommon.BinaryRegExpSearch)("(...)�SMB(....)[\001\002\003\004]...(....)", l_0_4)
    if not l_0_7 then
      return mp.CLEAN
    end
    readu32 = function(l_1_0, l_1_1)
  -- function num : 0_0
  -- DECOMPILER ERROR at PC5: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC11: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC17: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC23: Overwrote pending register: R5 in 'AssignReg'

  return nil + nil * 256 + nil * 65536 + nil * 16777216
end

    l_0_8 = (mp.bitand)((string.byte)(l_0_8, 1), 1) * 65536 + (string.byte)(l_0_8, 2) * 256 + (string.byte)(l_0_8, 3)
    l_0_9 = readu32(l_0_9, 1)
    if 4294967295 - readu32(R8_PC63, 1) < l_0_9 then
      return mp.INFECTED
    end
    -- DECOMPILER ERROR at PC74: Confused about usage of register: R6 in 'UnsetPending'

    if l_0_6 < l_0_8 and l_0_8 - l_0_6 < readu32(R8_PC63, 1) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

