-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001485_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10, l_0_11 = nil
  end
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC34: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC52: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC61: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC70: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC79: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC88: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC97: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC106: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC115: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and (string.find)(l_0_0, "fsockopen", 1, true) and ((string.find)(l_0_0, "shell_exec", 1, true) or (string.find)(l_0_0, "exec", 1, true) or (string.find)(l_0_0, "shell_exec", 1, true) or (string.find)(l_0_0, "system", 1, true) or (string.find)(l_0_0, "passthru", 1, true) or (string.find)(l_0_0, "popen", 1, true) or (string.find)(l_0_0, "proc_open", 1, true)) and ((string.find)(l_0_0, ">&", 1, true) or (string.find)(l_0_0, "array", 1, true)) then
    if (string.find)(l_0_0, "127.0.0.1", 1, true) or (string.find)(l_0_0, "0.0.0.0", 1, true) then
      return mp.CLEAN
    else
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

