-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001205_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p2 ~= nil then
      local l_0_1 = (this_sigattrlog[2]).utf8p2
    else
    end
    -- DECOMPILER ERROR at PC68: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p2 == nil or (this_sigattrlog[5]).matched) and (this_sigattrlog[5]).utf8p2 ~= nil then
        local l_0_2 = (this_sigattrlog[4]).utf8p2
      else
      end
      -- DECOMPILER ERROR at PC96: Overwrote pending register: R0 in 'AssignReg'

      do
        if (not (this_sigattrlog[6]).matched or (this_sigattrlog[6]).utf8p2 == nil or (this_sigattrlog[7]).matched) and (this_sigattrlog[7]).utf8p2 ~= nil then
          local l_0_3 = (this_sigattrlog[6]).utf8p2
        else
        end
        -- DECOMPILER ERROR at PC124: Overwrote pending register: R0 in 'AssignReg'

        do
          if (not (this_sigattrlog[8]).matched or (this_sigattrlog[8]).utf8p2 == nil or (this_sigattrlog[9]).matched) and (this_sigattrlog[9]).utf8p2 ~= nil then
            local l_0_4 = (this_sigattrlog[8]).utf8p2
          else
          end
          -- DECOMPILER ERROR at PC152: Overwrote pending register: R0 in 'AssignReg'

          do
            if (not (this_sigattrlog[10]).matched or (this_sigattrlog[10]).utf8p2 == nil or (this_sigattrlog[11]).matched) and (this_sigattrlog[11]).utf8p2 ~= nil then
              local l_0_5 = (this_sigattrlog[10]).utf8p2
            else
            end
            -- DECOMPILER ERROR at PC180: Overwrote pending register: R0 in 'AssignReg'

            do
              if (not (this_sigattrlog[12]).matched or (this_sigattrlog[12]).utf8p2 == nil or (this_sigattrlog[13]).matched) and (this_sigattrlog[13]).utf8p2 ~= nil then
                local l_0_6 = (this_sigattrlog[12]).utf8p2
              else
              end
              -- DECOMPILER ERROR at PC208: Overwrote pending register: R0 in 'AssignReg'

              do
                if (not (this_sigattrlog[14]).matched or (this_sigattrlog[14]).utf8p2 == nil or (this_sigattrlog[15]).matched) and (this_sigattrlog[15]).utf8p2 ~= nil then
                  local l_0_7 = (this_sigattrlog[14]).utf8p2
                else
                end
                -- DECOMPILER ERROR at PC236: Overwrote pending register: R0 in 'AssignReg'

                do
                  if (not (this_sigattrlog[16]).matched or (this_sigattrlog[16]).utf8p2 == nil or (this_sigattrlog[17]).matched) and (this_sigattrlog[17]).utf8p2 ~= nil then
                    local l_0_8 = (this_sigattrlog[16]).utf8p2
                  else
                  end
                  -- DECOMPILER ERROR at PC264: Overwrote pending register: R0 in 'AssignReg'

                  do
                    if (not (this_sigattrlog[18]).matched or (this_sigattrlog[18]).utf8p2 == nil or (this_sigattrlog[19]).matched) and (this_sigattrlog[19]).utf8p2 ~= nil then
                      local l_0_9, l_0_10, l_0_11 = (this_sigattrlog[18]).utf8p2
                    else
                    end
                    -- DECOMPILER ERROR at PC283: Confused about usage of register: R0 in 'UnsetPending'

                    if not (this_sigattrlog[20]).matched or (this_sigattrlog[20]).utf8p2 == nil or (this_sigattrlog[20]).utf8p2 ~= nil then
                      local l_0_12 = (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[20]).utf8p2)
                      l_0_12 = (string.lower)(l_0_12)
                      local l_0_13 = l_0_12:match("\\([^\\]+)$")
                      local l_0_14 = (string.sub)(l_0_12, 1, (string.len)(l_0_12) - (string.len)(l_0_13) - 1)
                      if l_0_14:find(":\\windows\\system32", 1, true) or l_0_14:find(":\\windows\\syswow64", 1, true) then
                        return mp.CLEAN
                      end
                      if l_0_14:find(":\\windows\\servicing", 1, true) or l_0_14:find(":\\windows\\winsxs", 1, true) then
                        return mp.CLEAN
                      end
                      return mp.INFECTED
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

