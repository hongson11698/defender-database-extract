-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001472_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[5]).matched then
    local l_0_0, l_0_1, l_0_8, l_0_9, l_0_10 = nil
  end
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    if (string.sub)(l_0_0, -4) == ".php" then
      local l_0_2 = nil
      for l_0_6,l_0_7 in ipairs({"/image", "/img", "/media", "/file", "/gallery", "/misc", "/photo", "/assets", "/upload"}) do
        local l_0_3 = nil
        -- DECOMPILER ERROR at PC39: Confused about usage of register: R6 in 'UnsetPending'

        if (string.find)(l_0_2, "/gallery", 1, true) then
          return mp.INFECTED
        end
      end
    else
      do
        -- DECOMPILER ERROR at PC53: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC60: Confused about usage of register: R0 in 'UnsetPending'

        if (string.match)(l_0_2, "(.+.php.+%a%a%a)") then
          local l_0_11 = nil
          local l_0_12 = (string.match)((string.sub)(l_0_2, -5), "%.(.*)")
          for l_0_16,l_0_17 in ipairs({"jpg", "jpeg", "png", "gif", "pdf"}) do
            local l_0_13 = nil
            -- DECOMPILER ERROR at PC80: Confused about usage of register: R7 in 'UnsetPending'

            if "pdf" == l_0_12 then
              return mp.INFECTED
            end
          end
        end
        do
          l_0_12 = mp
          l_0_12 = l_0_12.CLEAN
          return l_0_12
        end
      end
    end
  end
end

