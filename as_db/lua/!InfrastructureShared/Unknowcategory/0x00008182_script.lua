-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008182_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
      local l_0_1 = (string.lower)((this_sigattrlog[3]).utf8p2)
    else
    end
    -- DECOMPILER ERROR at PC63: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[5]).matched or (this_sigattrlog[6]).matched then
        local l_0_2, l_0_3, l_0_4, l_0_5 = (string.lower)((this_sigattrlog[5]).utf8p2), nil
      else
      end
      if (this_sigattrlog[7]).matched then
        local l_0_6 = (string.lower)((this_sigattrlog[7]).utf8p2)
        -- DECOMPILER ERROR at PC91: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC99: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC108: Confused about usage of register: R1 in 'UnsetPending'

        if l_0_6 and (string.lower)((this_sigattrlog[1]).utf8p1) and (string.find)(l_0_6, (string.lower)((this_sigattrlog[1]).utf8p1), 1, true) then
          if (string.find)((string.lower)((this_sigattrlog[1]).utf8p1), "\\appdata\\", 1, true) then
            local l_0_7, l_0_9, l_0_10 = , (string.match)((string.lower)((this_sigattrlog[1]).utf8p1), "(.+\\)([^\\]+)$")
            if l_0_9 then
              if (string.sub)(l_0_9, -27) == "\\appdata\\roaming\\microsoft\\" then
                return mp.INFECTED
              else
                if (string.sub)(l_0_9, -35) == "\\appdata\\roaming\\microsoft\\windows\\" then
                  return mp.INFECTED
                end
              end
            end
          else
            do
              do
                local l_0_8 = nil
                if (string.find)(l_0_8, ":\\programdata\\", 1, true) and (string.match)(l_0_8, "(.+\\)([^\\]+)$") and (string.sub)((string.match)(l_0_8, "(.+\\)([^\\]+)$"), -24) == ":\\programdata\\microsoft\\" then
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

