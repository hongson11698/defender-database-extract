-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\212b35b621884\0x000014ba_luac 

-- params : ...
-- function num : 0
local l_0_1 = nil
-- DECOMPILER ERROR at PC12: Overwrote pending register: R2 in 'AssignReg'

do
  if (this_sigattrlog[9]).matched and (this_sigattrlog[9]).utf8p1 ~= nil then
    local l_0_2 = nil
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC28: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC31: Overwrote pending register: R0 in 'AssignReg'

  do
    if (this_sigattrlog[10]).matched and (this_sigattrlog[10]).utf8p1 ~= nil then
      local l_0_3, l_0_4, l_0_8, l_0_10, l_0_14, l_0_16, l_0_20, l_0_22, l_0_26, l_0_29, l_0_33, l_0_37 = l_0_2, nil, nil, nil, nil
    end
    do
      if (this_sigattrlog[11]).matched and (this_sigattrlog[11]).utf8p1 ~= nil then
        local l_0_6, l_0_12, l_0_18, l_0_24, l_0_28, l_0_31, l_0_35, l_0_39 = , (this_sigattrlog[11]).utf8p1
        l_0_35 = this_sigattrlog
        l_0_35 = l_0_35[11]
        l_0_6 = l_0_35.ppid
      end
      do
        if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
          local l_0_7 = nil
          local l_0_5 = (this_sigattrlog[1]).ppid
        end
        -- DECOMPILER ERROR at PC76: Overwrote pending register: R3 in 'AssignReg'

        do
          if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
            local l_0_9, l_0_11 = , (this_sigattrlog[2]).ppid
          end
          -- DECOMPILER ERROR at PC92: Overwrote pending register: R3 in 'AssignReg'

          do
            if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
              local l_0_13 = nil
            end
            -- DECOMPILER ERROR at PC108: Overwrote pending register: R3 in 'AssignReg'

            -- DECOMPILER ERROR at PC111: Overwrote pending register: R1 in 'AssignReg'

            do
              if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
                local l_0_15, l_0_17 = , (this_sigattrlog[3]).ppid
              end
              -- DECOMPILER ERROR at PC124: Overwrote pending register: R3 in 'AssignReg'

              do
                if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
                  local l_0_19 = nil
                end
                -- DECOMPILER ERROR at PC140: Overwrote pending register: R3 in 'AssignReg'

                -- DECOMPILER ERROR at PC143: Overwrote pending register: R1 in 'AssignReg'

                do
                  if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
                    local l_0_21, l_0_23 = , (this_sigattrlog[5]).ppid
                  end
                  -- DECOMPILER ERROR at PC156: Overwrote pending register: R3 in 'AssignReg'

                  do
                    if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).utf8p2 ~= nil then
                      local l_0_25, l_0_32, l_0_36, l_0_40 = , (this_sigattrlog[1]).utf8p2
                      l_0_32 = (this_sigattrlog[7]).ppid
                    end
                    do
                      if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).utf8p2 ~= nil then
                        local l_0_27, l_0_30, l_0_34, l_0_38 = , (this_sigattrlog[8]).ppid, (this_sigattrlog[8]).utf8p2
                      end
                      -- DECOMPILER ERROR at PC176: Confused about usage of register: R2 in 'UnsetPending'

                      -- DECOMPILER ERROR at PC178: Confused about usage of register: R3 in 'UnsetPending'

                      if l_0_34 == nil or l_0_38 == nil then
                        return mp.CLEAN
                      end
                      -- DECOMPILER ERROR at PC185: Confused about usage of register: R3 in 'UnsetPending'

                      local l_0_41 = nil
                      -- DECOMPILER ERROR at PC191: Confused about usage of register: R4 in 'UnsetPending'

                      -- DECOMPILER ERROR at PC194: Confused about usage of register: R4 in 'UnsetPending'

                      do
                        if (string.match)(l_0_38, "/var/spool/mail/([^;]*)") ~= nil and (string.match)(l_0_38, "/var/spool/mail/([^;]*)") ~= "" then
                          local l_0_42, l_0_43, l_0_44, l_0_45 = nil
                        end
                        -- DECOMPILER ERROR at PC198: Confused about usage of register: R2 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC204: Confused about usage of register: R3 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC213: Confused about usage of register: R3 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC214: Confused about usage of register: R2 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC222: Confused about usage of register: R2 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC222: Confused about usage of register: R5 in 'UnsetPending'

                        if (sysio.IsFileExists)(l_0_43) and (string.find)(l_0_44, ">", 1, true) and ((string.find)(l_0_44, l_0_43, 1, true) or "/var/mail/" .. (string.match)(l_0_38, "/var/spool/mail/([^;]*)") == nil or "/var/mail/" .. (string.match)(l_0_38, "/var/spool/mail/([^;]*)") == l_0_43) and (bm.GetSignatureMatchDuration)() < 20000000 then
                          if l_0_41 ~= nil then
                            TrackPidAndTechniqueBM(l_0_41, "T1070.002", "DefenseEvasion")
                          end
                          -- DECOMPILER ERROR at PC236: Confused about usage of register: R1 in 'UnsetPending'

                          -- DECOMPILER ERROR at PC239: Confused about usage of register: R1 in 'UnsetPending'

                          if l_0_42 ~= nil then
                            TrackPidAndTechniqueBM(l_0_42, "T1070.002", "DefenseEvasion")
                          end
                          addRelatedProcess()
                          -- DECOMPILER ERROR at PC247: Confused about usage of register: R3 in 'UnsetPending'

                          if (string.find)(l_0_44, "/var/log/mdatp_cron_job.log", 1, true) then
                            return mp.CLEAN
                          end
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
      end
    end
  end
end

