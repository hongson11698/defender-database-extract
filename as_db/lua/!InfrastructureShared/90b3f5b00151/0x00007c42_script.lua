-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\90b3f5b00151\0x00007c42_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_5, l_0_7, l_0_9 = nil, nil
  else
  end
  -- DECOMPILER ERROR at PC36: Confused about usage of register: R0 in 'UnsetPending'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or contains((this_sigattrlog[2]).utf8p2, "%-[eE][ncodemaNCODEMA]*%s+\"?%s*([A-Za-z0-9/%+=]+)", false) then
      local l_0_4, l_0_6, l_0_8, l_0_10 = , NormalizeCmdline("powershell", (this_sigattrlog[2]).utf8p2)
    end
    -- DECOMPILER ERROR at PC39: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC41: Confused about usage of register: R1 in 'UnsetPending'

    if l_0_6 == nil or l_0_6 == "" then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC46: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC46: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC51: Confused about usage of register: R1 in 'UnsetPending'

    if l_0_4 ~= l_0_6 then
      (bm.trigger_sig)("PShellB64Decode", l_0_6)
    end
    return mp.CLEAN
  end
end

