-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000002e6_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC15: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil or #l_0_0 <= 0 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_3 = nil
  local l_0_4 = (mp.GetExecutablesFromCommandLine)(l_0_0)
  for l_0_8,l_0_9 in ipairs(l_0_4) do
    local l_0_5 = false
    -- DECOMPILER ERROR at PC34: Confused about usage of register: R7 in 'UnsetPending'

    if (string.find)((string.lower)(R7_PC34), "\\program files", 1, true) == nil and (sysio.IsFileExists)(R7_PC34) and (MpCommon.QueryPersistContext)(R7_PC34, "RemoteAccessTool") then
      (bm.add_threat_file)(R7_PC34)
      l_0_5 = true
    end
  end
  -- DECOMPILER ERROR at PC62: Confused about usage of register: R2 in 'UnsetPending'

  if l_0_5 == false then
    return mp.CLEAN
  end
  return mp.INFECTED
end

