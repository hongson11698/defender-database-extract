-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\58b3ff9b0685\0x00007bf6_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC10: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil or l_0_0 == "" then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_3 = nil
  if NormalizeCmdline("powershell", l_0_0) == nil then
    return mp.CLEAN
  end
  local l_0_4 = nil
  local l_0_5 = contains
  local l_0_6 = l_0_4
  l_0_5 = l_0_5(l_0_6, {"VMWare", "Hyper-V", "Parallels", "Oracle VM VirtualBox", "Citrix Hypervisor", "QEMU", "Proxmox VE", "Docker"})
  if not l_0_5 then
    l_0_5 = mp
    l_0_5 = l_0_5.CLEAN
    return l_0_5
  end
  l_0_5 = mp
  l_0_5 = l_0_5.INFECTED
  return l_0_5
end

