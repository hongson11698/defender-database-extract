-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\90b38bb57221\0x000081ae_luac 

-- params : ...
-- function num : 0
if not isTamperProtectionOn() then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC19: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_5 = nil, nil
  else
  end
  -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or contains((this_sigattrlog[2]).utf8p2, "%-[eE][ncodemaNCODEMA]*%s+", false) then
      local l_0_4, l_0_6 = , NormalizeCmdline("powershell", (this_sigattrlog[2]).utf8p2)
    end
    -- DECOMPILER ERROR at PC46: Confused about usage of register: R1 in 'UnsetPending'

    if l_0_6 == nil then
      return mp.CLEAN
    end
    local l_0_7 = nil
    -- DECOMPILER ERROR at PC52: Confused about usage of register: R1 in 'UnsetPending'

    local l_0_8 = nil
    local l_0_9 = contains
    l_0_9 = l_0_9(l_0_6, {"add-mppreference", "set-mppreference"})
    if not l_0_9 then
      l_0_9 = mp
      l_0_9 = l_0_9.CLEAN
      return l_0_9
    end
    if contains(l_0_8, l_0_9) then
      return mp.CLEAN
    end
    local l_0_10 = nil
    if contains(GetFileName(((mp.GetParentProcInfo)()).image_path), {"perl.exe", "python.exe"}) then
      return mp.CLEAN
    end
    local l_0_11 = nil
    local l_0_12 = nil
    local l_0_13 = contains
    l_0_13 = l_0_13(l_0_8, {"add-mppreference", "set-mppreference"})
    if l_0_13 then
      l_0_13 = contains
      l_0_13 = l_0_13(l_0_8, {"-disable", "-exclusion"})
      if l_0_13 then
        l_0_13 = bm
        l_0_13 = l_0_13.add_related_string
        l_0_13("proc_cmdline", l_0_8, bm.RelatedStringBMReport)
        l_0_13 = TrackPidAndTechniqueBM
        l_0_13("BM", "T1562.001", "mptamper_av")
        l_0_13 = mp
        l_0_13 = l_0_13.INFECTED
        return l_0_13
      end
    end
    l_0_13 = mp
    l_0_13 = l_0_13.CLEAN
    return l_0_13
  end
end

