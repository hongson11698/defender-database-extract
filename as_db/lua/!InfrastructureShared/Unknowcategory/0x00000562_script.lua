-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000562_luac 

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
            local l_0_4, l_0_5, l_0_6, l_0_7 = (this_sigattrlog[8]).utf8p2
          else
          end
          -- DECOMPILER ERROR at PC143: Confused about usage of register: R0 in 'UnsetPending'

          if not (this_sigattrlog[10]).matched or (this_sigattrlog[10]).utf8p2 == nil or (this_sigattrlog[10]).utf8p2 ~= nil then
            local l_0_8 = nil
            for l_0_12,l_0_13 in ipairs((mp.GetExecutablesFromCommandLine)((this_sigattrlog[10]).utf8p2)) do
              local l_0_9 = nil
              -- DECOMPILER ERROR at PC151: Confused about usage of register: R6 in 'UnsetPending'

              if (sysio.IsFileExists)(R6_PC151) then
                (bm.add_related_file)(R6_PC151)
              end
            end
          end
          do
            return mp.INFECTED
          end
        end
      end
    end
  end
end

