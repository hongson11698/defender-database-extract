-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\159b364b8503f\0x00001498_luac 

-- params : ...
-- function num : 0
local l_0_4 = nil
-- DECOMPILER ERROR at PC8: Overwrote pending register: R1 in 'AssignReg'

do
  if (this_sigattrlog[9]).matched then
    local l_0_1, l_0_3 = nil, ""
    l_0_4 = (string.find)((this_sigattrlog[9]).utf8p1, "/bash", 1, true)
    local l_0_0, l_0_2 = nil
    if l_0_4 ~= nil then
      l_0_0 = sysio
      l_0_0 = l_0_0.IsFileExists
      l_0_2 = "/run/yum.pid"
      l_0_0 = l_0_0(l_0_2)
      if l_0_0 then
        l_0_0 = mp
        l_0_0 = l_0_0.CLEAN
        return l_0_0
      end
    end
    l_0_0 = isParentPackageManager
    l_0_2 = l_0_1
    l_0_0 = l_0_0(l_0_2)
    if l_0_0 then
      l_0_0 = mp
      l_0_0 = l_0_0.CLEAN
      return l_0_0
    end
  end
  -- DECOMPILER ERROR at PC51: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC58: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC65: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC72: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC79: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC86: Overwrote pending register: R2 in 'AssignReg'

  if ((((((this_sigattrlog[10]).matched and not (this_sigattrlog[11]).matched) or (this_sigattrlog[12]).matched) and not (this_sigattrlog[13]).matched) or (this_sigattrlog[14]).matched) and not (this_sigattrlog[15]).matched) or (this_sigattrlog[16]).matched then
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC91: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC94: Confused about usage of register: R1 in 'UnsetPending'

    if l_0_1 ~= nil then
      TrackPidAndTechniqueBM(l_0_1, "T1546.004", "Persistence")
    end
    reportRelatedBmHits()
    addRelatedProcess()
    return mp.INFECTED
  end
end

