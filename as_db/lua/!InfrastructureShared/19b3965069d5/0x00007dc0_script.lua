-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\19b3965069d5\0x00007dc0_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched then
  local l_0_0, l_0_1, l_0_2, l_0_7 = nil
else
  do
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_0 == nil or (string.len)(l_0_0) == 0 then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

    for l_0_6 in l_0_0:gmatch("([^\r\n]*)\n?") do
      local l_0_3 = nil
      -- DECOMPILER ERROR at PC29: Confused about usage of register: R4 in 'UnsetPending'

      R4_PC29 = (mp.ContextualExpandEnvironmentVariables)(R4_PC29)
      if (sysio.IsFileExists)(R4_PC29) then
        (bm.add_related_file)(R4_PC29)
      end
    end
    TrackPidAndTechniqueBM("BM", "T1037.001", "persistence_source")
    return mp.INFECTED
  end
end

