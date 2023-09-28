-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2c2b3019e23c3\0x00008282_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_2, l_0_4, l_0_6, l_0_8, l_0_10, l_0_12, l_0_14, l_0_16, l_0_17 = nil, nil
  end
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_1 = nil
  else
    do
      -- DECOMPILER ERROR at PC39: Overwrote pending register: R1 in 'AssignReg'

      -- DECOMPILER ERROR at PC53: Overwrote pending register: R1 in 'AssignReg'

      if (not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p2 == nil or (this_sigattrlog[4]).matched) and (this_sigattrlog[4]).utf8p2 ~= nil then
        local l_0_3 = nil
      else
        do
          -- DECOMPILER ERROR at PC67: Overwrote pending register: R1 in 'AssignReg'

          -- DECOMPILER ERROR at PC81: Overwrote pending register: R1 in 'AssignReg'

          if (not (this_sigattrlog[5]).matched or (this_sigattrlog[5]).utf8p2 == nil or (this_sigattrlog[6]).matched) and (this_sigattrlog[6]).utf8p2 ~= nil then
            local l_0_5 = nil
          else
            do
              -- DECOMPILER ERROR at PC95: Overwrote pending register: R1 in 'AssignReg'

              -- DECOMPILER ERROR at PC109: Overwrote pending register: R1 in 'AssignReg'

              if (not (this_sigattrlog[7]).matched or (this_sigattrlog[7]).utf8p2 == nil or (this_sigattrlog[8]).matched) and (this_sigattrlog[8]).utf8p2 ~= nil then
                local l_0_7 = nil
              else
                do
                  -- DECOMPILER ERROR at PC123: Overwrote pending register: R1 in 'AssignReg'

                  -- DECOMPILER ERROR at PC137: Overwrote pending register: R1 in 'AssignReg'

                  if (not (this_sigattrlog[9]).matched or (this_sigattrlog[9]).utf8p2 == nil or (this_sigattrlog[10]).matched) and (this_sigattrlog[10]).utf8p2 ~= nil then
                    local l_0_9 = nil
                  else
                    do
                      -- DECOMPILER ERROR at PC151: Overwrote pending register: R1 in 'AssignReg'

                      -- DECOMPILER ERROR at PC165: Overwrote pending register: R1 in 'AssignReg'

                      if (not (this_sigattrlog[11]).matched or (this_sigattrlog[11]).utf8p2 == nil or (this_sigattrlog[12]).matched) and (this_sigattrlog[12]).utf8p2 ~= nil then
                        local l_0_11 = nil
                      else
                        do
                          -- DECOMPILER ERROR at PC179: Overwrote pending register: R1 in 'AssignReg'

                          -- DECOMPILER ERROR at PC193: Overwrote pending register: R1 in 'AssignReg'

                          if (not (this_sigattrlog[13]).matched or (this_sigattrlog[13]).utf8p2 == nil or (this_sigattrlog[14]).matched) and (this_sigattrlog[14]).utf8p2 ~= nil then
                            local l_0_13 = nil
                          else
                            do
                              -- DECOMPILER ERROR at PC207: Overwrote pending register: R1 in 'AssignReg'

                              -- DECOMPILER ERROR at PC221: Overwrote pending register: R1 in 'AssignReg'

                              do
                                if (not (this_sigattrlog[15]).matched or (this_sigattrlog[15]).utf8p2 == nil or (this_sigattrlog[16]).matched) and (this_sigattrlog[16]).utf8p2 ~= nil then
                                  local l_0_15, l_0_18 = , (this_sigattrlog[2]).utf8p2
                                else
                                end
                                if (this_sigattrlog[17]).matched and (this_sigattrlog[17]).utf8p2 ~= nil then
                                  local l_0_19 = nil
                                  bm_AddRelatedFileFromCommandLine(l_0_19)
                                  -- DECOMPILER ERROR at PC253: Confused about usage of register: R1 in 'UnsetPending'

                                  if (this_sigattrlog[17]).utf8p2 ~= nil then
                                    local l_0_20 = nil
                                    for l_0_24,l_0_25 in ipairs((mp.GetExecutablesFromCommandLine)((this_sigattrlog[17]).utf8p2)) do
                                      local l_0_21, l_0_22 = {"\\users\\public\\.+", "\\users\\.+\\appdata\\roaming\\.+", "\\users\\.+\\appdata\\local\\temp\\.+", "\\users\\.+\\appdata\\local\\temp\\7z.+", "\\users\\.+\\appdata\\local\\temp\\rar.+", "\\users\\.+\\appdata\\local\\temp\\bnz.+", "\\device\\cdrom.+", "\\device\\mup\\.+"}
                                      -- DECOMPILER ERROR at PC261: Confused about usage of register: R8 in 'UnsetPending'

                                      if (sysio.IsFileExists)((mp.ContextualExpandEnvironmentVariables)("\\users\\.+\\appdata\\local\\temp\\bnz.+")) then
                                        for l_0_29,l_0_30 in ipairs(l_0_21) do
                                          -- DECOMPILER ERROR at PC275: Confused about usage of register: R13 in 'UnsetPending'

                                          if (l_0_27.find)(R13_PC275) and checkFileLastWriteTime(l_0_27, 300) == false then
                                            (bm.add_related_file)(l_0_27)
                                            return mp.INFECTED
                                          end
                                        end
                                      end
                                    end
                                  end
                                  do
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
          end
        end
      end
    end
  end
end

