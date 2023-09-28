-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d8b3875f524c\0x00007ee4_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if not l_0_0 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC24: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC31: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC45: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC52: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC59: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC66: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC73: Confused about usage of register: R0 in 'UnsetPending'

  do
    if ((((((not contains(l_0_0, "powershell") or contains(l_0_0, "cmd.exe")) and not contains(l_0_0, "wscript")) or contains(l_0_0, "mshta")) and not contains(l_0_0, "jscript")) or contains(l_0_0, "wmic")) and not contains(l_0_0, "rundll32")) or contains(l_0_0, "regsvr32") then
      local l_0_10 = nil
    end
    -- DECOMPILER ERROR at PC82: Confused about usage of register: R0 in 'UnsetPending'

    if nil + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 > 1 then
      bm_AddRelatedFileFromCommandLine(l_0_10)
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

