-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\eeb3b1535eaa\0x00007dcb_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if not l_0_0 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

  if contains(l_0_0, "download") or contains(l_0_0, "frombase64string") then
    return mp.INFECTED
  else
    -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC47: Confused about usage of register: R0 in 'UnsetPending'

    if contains(l_0_0, "%-[eE][ncodNCOD]*%s+", false) then
      local l_0_5 = nil
      if contains(NormalizeCmdline("powershell", l_0_0), "download") or contains(NormalizeCmdline("powershell", l_0_0), "frombase64string") then
        bm_AddRelatedFileFromCommandLine(l_0_5)
        return mp.INFECTED
      end
    end
  end
  do
    return mp.CLEAN
  end
end

