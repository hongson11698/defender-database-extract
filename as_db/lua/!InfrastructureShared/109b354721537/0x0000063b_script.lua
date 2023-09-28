-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\109b354721537\0x0000063b_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC52: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p1 == nil or (this_sigattrlog[4]).matched) and (this_sigattrlog[4]).utf8p1 ~= nil then
      local l_0_1 = (string.lower)((this_sigattrlog[3]).utf8p1)
    else
    end
    -- DECOMPILER ERROR at PC88: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[5]).matched or (this_sigattrlog[5]).utf8p1 == nil or (this_sigattrlog[6]).matched) and (this_sigattrlog[6]).utf8p1 ~= nil then
        local l_0_2 = (string.lower)((this_sigattrlog[5]).utf8p1)
      else
      end
      -- DECOMPILER ERROR at PC124: Overwrote pending register: R0 in 'AssignReg'

      do
        if (not (this_sigattrlog[7]).matched or (this_sigattrlog[7]).utf8p1 == nil or (this_sigattrlog[8]).matched) and (this_sigattrlog[8]).utf8p1 ~= nil then
          local l_0_3, l_0_4, l_0_5, l_0_7, l_0_9, l_0_11, l_0_13 = (string.lower)((this_sigattrlog[7]).utf8p1), nil
        else
        end
        if not (this_sigattrlog[9]).matched or (this_sigattrlog[9]).utf8p1 == nil or (string.match)((string.lower)((this_sigattrlog[9]).utf8p1), "/%.[^/]+$") then
          if (this_sigattrlog[10]).matched and (this_sigattrlog[10]).utf8p1 ~= nil then
            local l_0_6 = nil
          else
            do
              -- DECOMPILER ERROR at PC184: Overwrote pending register: R1 in 'AssignReg'

              -- DECOMPILER ERROR at PC202: Overwrote pending register: R1 in 'AssignReg'

              do
                if (not (this_sigattrlog[11]).matched or (this_sigattrlog[11]).utf8p1 == nil or (this_sigattrlog[12]).matched) and (this_sigattrlog[12]).utf8p1 ~= nil then
                  local l_0_8, l_0_10, l_0_12, l_0_14 = , (string.lower)((this_sigattrlog[10]).utf8p1)
                else
                end
                -- DECOMPILER ERROR at PC221: Confused about usage of register: R0 in 'UnsetPending'

                if not (this_sigattrlog[13]).matched or (this_sigattrlog[13]).utf8p1 == nil or l_0_8 == (string.lower)((this_sigattrlog[13]).utf8p1) then
                  addRelatedProcess()
                  TrackPidAndTechniqueBM("BM", "T1564", "DefenseEvasion_Hiddenfiles_droppedhidden")
                  return mp.INFECTED
                end
                return mp.CLEAN
              end
            end
          end
        end
      end
    end
  end
end

