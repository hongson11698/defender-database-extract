-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2f6b335683dd9\0x00000635_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[5]).matched or (this_sigattrlog[5]).utf8p1 == nil or (this_sigattrlog[6]).matched) and (this_sigattrlog[6]).utf8p1 ~= nil then
      local l_0_1 = (this_sigattrlog[5]).utf8p1
    else
    end
    -- DECOMPILER ERROR at PC68: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[7]).matched or (this_sigattrlog[7]).utf8p1 == nil or (this_sigattrlog[8]).matched) and (this_sigattrlog[8]).utf8p1 ~= nil then
        local l_0_2 = (this_sigattrlog[7]).utf8p1
      else
      end
      -- DECOMPILER ERROR at PC96: Overwrote pending register: R0 in 'AssignReg'

      do
        if (not (this_sigattrlog[9]).matched or (this_sigattrlog[9]).utf8p1 == nil or (this_sigattrlog[10]).matched) and (this_sigattrlog[10]).utf8p1 ~= nil then
          local l_0_3 = (this_sigattrlog[9]).utf8p1
        else
        end
        -- DECOMPILER ERROR at PC124: Overwrote pending register: R0 in 'AssignReg'

        do
          if (not (this_sigattrlog[11]).matched or (this_sigattrlog[11]).utf8p1 == nil or (this_sigattrlog[12]).matched) and (this_sigattrlog[12]).utf8p1 ~= nil then
            local l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_10 = (this_sigattrlog[11]).utf8p1
          else
          end
          -- DECOMPILER ERROR at PC143: Confused about usage of register: R0 in 'UnsetPending'

          -- DECOMPILER ERROR at PC152: Confused about usage of register: R0 in 'UnsetPending'

          if not (this_sigattrlog[13]).matched or (this_sigattrlog[13]).utf8p1 == nil or (this_sigattrlog[13]).utf8p1 then
            do
              if (string.find)((this_sigattrlog[13]).utf8p1, "deleted", 1, true) then
                local l_0_9 = nil
                if (string.match)((this_sigattrlog[13]).utf8p1, "(/.+)%s%(deleted") ~= nil then
                  l_0_9 = (string.match)((this_sigattrlog[13]).utf8p1, "(/.+)%s%(deleted")
                end
              end
              -- DECOMPILER ERROR at PC159: Confused about usage of register: R0 in 'UnsetPending'

              if isTainted(l_0_9, "static_hit") then
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

