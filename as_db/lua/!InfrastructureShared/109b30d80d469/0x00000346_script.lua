-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\109b30d80d469\0x00000346_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  -- DECOMPILER ERROR at PC13: Unhandled construct in 'MakeBoolean' P1

  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    -- DECOMPILER ERROR at PC41: Unhandled construct in 'MakeBoolean' P1

    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p1 ~= nil and (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p1 ~= nil then
      local l_0_1 = (this_sigattrlog[2]).utf8p1
    end
    -- DECOMPILER ERROR at PC68: Overwrote pending register: R0 in 'AssignReg'

    do
      -- DECOMPILER ERROR at PC69: Unhandled construct in 'MakeBoolean' P1

      if (not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p1 ~= nil and (this_sigattrlog[5]).matched) and (this_sigattrlog[5]).utf8p1 ~= nil then
        local l_0_2, l_0_3, l_0_5, l_0_7, l_0_9, l_0_11 = (this_sigattrlog[4]).utf8p1, nil
      end
      do
        -- DECOMPILER ERROR at PC96: Unhandled construct in 'MakeBoolean' P1

        if (not (this_sigattrlog[6]).matched or (this_sigattrlog[6]).utf8p1 == nil or (this_sigattrlog[7]).matched) and (this_sigattrlog[7]).utf8p1 ~= nil then
          local l_0_4 = (this_sigattrlog[6]).utf8p1
        end
        -- DECOMPILER ERROR at PC109: Overwrote pending register: R1 in 'AssignReg'

        -- DECOMPILER ERROR at PC123: Overwrote pending register: R1 in 'AssignReg'

        do
          -- DECOMPILER ERROR at PC124: Unhandled construct in 'MakeBoolean' P1

          if (not (this_sigattrlog[8]).matched or (this_sigattrlog[8]).utf8p1 ~= nil and (this_sigattrlog[9]).matched) and (this_sigattrlog[9]).utf8p1 ~= nil then
            local l_0_6 = nil
          end
          -- DECOMPILER ERROR at PC137: Overwrote pending register: R1 in 'AssignReg'

          -- DECOMPILER ERROR at PC151: Overwrote pending register: R1 in 'AssignReg'

          do
            -- DECOMPILER ERROR at PC152: Unhandled construct in 'MakeBoolean' P1

            if (not (this_sigattrlog[10]).matched or (this_sigattrlog[10]).utf8p1 ~= nil and (this_sigattrlog[11]).matched) and (this_sigattrlog[11]).utf8p1 ~= nil then
              local l_0_8, l_0_10, l_0_12 = , (this_sigattrlog[7]).utf8p1
            end
            -- DECOMPILER ERROR at PC166: Confused about usage of register: R0 in 'UnsetPending'

            if not (this_sigattrlog[12]).matched or (this_sigattrlog[12]).utf8p1 == nil or l_0_8 == (this_sigattrlog[12]).utf8p1 then
              return mp.CLEAN
            end
            if IsDetectionThresholdMet("BM") then
              TrackPidAndTechniqueBM("BM", "T1059", "commandscripttheshold")
              return mp.INFECTED
            end
            return mp.CLEAN
          end
        end
      end
    end
  end
end

