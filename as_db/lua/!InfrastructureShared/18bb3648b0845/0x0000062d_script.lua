-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\18bb3648b0845\0x0000062d_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p1 == nil or (this_sigattrlog[4]).matched) and (this_sigattrlog[4]).utf8p1 ~= nil then
      local l_0_1 = (this_sigattrlog[3]).utf8p1
    else
    end
    -- DECOMPILER ERROR at PC68: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[5]).matched or (this_sigattrlog[5]).utf8p1 == nil or (this_sigattrlog[6]).matched) and (this_sigattrlog[6]).utf8p1 ~= nil then
        local l_0_2 = (this_sigattrlog[5]).utf8p1
      else
      end
      -- DECOMPILER ERROR at PC96: Overwrote pending register: R0 in 'AssignReg'

      do
        if (not (this_sigattrlog[7]).matched or (this_sigattrlog[7]).utf8p1 == nil or (this_sigattrlog[8]).matched) and (this_sigattrlog[8]).utf8p1 ~= nil then
          local l_0_3, l_0_4, l_0_5, l_0_6 = (this_sigattrlog[7]).utf8p1
        else
        end
        -- DECOMPILER ERROR at PC115: Confused about usage of register: R0 in 'UnsetPending'

        do
          if not (this_sigattrlog[9]).matched or (this_sigattrlog[9]).utf8p1 == nil or (this_sigattrlog[9]).utf8p1 then
            local l_0_7 = nil
            if (string.match)((this_sigattrlog[9]).utf8p1, "imagepath:(.*)") then
              (bm.add_related_file)((string.match)((this_sigattrlog[9]).utf8p1, "imagepath:(.*)"))
            end
          end
          return mp.INFECTED
        end
      end
    end
  end
end

