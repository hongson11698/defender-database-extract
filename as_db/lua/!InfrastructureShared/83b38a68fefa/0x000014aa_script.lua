-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\83b38a68fefa\0x000014aa_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10, l_0_11, l_0_12, l_0_13, l_0_14, l_0_15, l_0_16, l_0_17, l_0_18 = nil
  else
  end
  -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC47: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC56: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC65: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC74: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC83: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC92: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC101: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC110: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC119: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC128: Confused about usage of register: R0 in 'UnsetPending'

  if (((this_sigattrlog[2]).matched and (string.lower)((this_sigattrlog[2]).utf8p2) == nil) or (not (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "*.db", 1, true) and not (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "*.txt", 1, true) and not (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "*.doc", 1, true) and not (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "*.pdf", 1, true) and not (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "*.xls", 1, true) and not (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "*.sh", 1, true) and not (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "*.c", 1, true)) or ((string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "/root/", 1, true) or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "/root ", 1, true) or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "/home/", 1, true) or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "/home ", 1, true) or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), " / ", 1, true))) then
    TrackPidAndTechniqueBM("BM", "T1083", "Discovery_FileAndDirectoryDiscovery")
    TrackPidAndTechniqueBM("BM", "T1486", "Impact_FileEncryption")
    addRelatedProcess()
    reportRelatedBmHits()
    RemediateProcessTreeForLinux()
    return mp.INFECTED
  end
  return mp.CLEAN
end

