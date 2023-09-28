-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\37b3d864e2ff\0x00007ac5_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil then
    return mp.CLEAN
  end
  local l_0_2 = nil
  if contains(l_0_2, {"ca.dev.cor.fi", "bit.ly/ltposh", "labtech", "install-lsagent"}) then
    return mp.CLEAN
  end
  if contains(l_0_2, "powershell") and contains(l_0_2, "downloadstring") then
    return mp.INFECTED
  end
  return mp.CLEAN
end

