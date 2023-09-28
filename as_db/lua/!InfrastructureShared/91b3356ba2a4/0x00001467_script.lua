-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\91b3356ba2a4\0x00001467_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[5]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC22: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[6]).matched or (this_sigattrlog[7]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4 = this_sigattrlog[6]
    end
    -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil and l_0_1.ppid ~= nil then
      if isParentPackageManager(l_0_1.ppid) then
        return mp.CLEAN
      end
      -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

      local l_0_5 = nil
      for l_0_9,l_0_10 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_1.utf8p2)) do
        local l_0_6 = nil
        -- DECOMPILER ERROR at PC46: Confused about usage of register: R6 in 'UnsetPending'

        if (sysio.IsFileExists)(R6_PC46) then
          (bm.add_related_file)(R6_PC46)
        end
      end
      TrackPidAndTechniqueBM(l_0_5.ppid, "T1053.003", "Persistence")
      reportRelatedBmHits()
      addRelatedProcess()
      return mp.INFECTED
    end
    do
      return mp.CLEAN
    end
  end
end

