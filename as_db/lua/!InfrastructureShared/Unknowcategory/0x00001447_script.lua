-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001447_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
      local l_0_1 = (this_sigattrlog[3]).ppid
    else
    end
    -- DECOMPILER ERROR at PC43: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[5]).matched or (this_sigattrlog[6]).matched then
        local l_0_2, l_0_3 = (this_sigattrlog[5]).ppid, nil
      end
      do
        if (this_sigattrlog[7]).matched then
          local l_0_4 = nil
        end
        -- DECOMPILER ERROR at PC52: Confused about usage of register: R0 in 'UnsetPending'

        if l_0_4 == nil or (this_sigattrlog[7]).utf8p1 == nil then
          return mp.CLEAN
        end
        -- DECOMPILER ERROR at PC61: Confused about usage of register: R0 in 'UnsetPending'

        local l_0_5 = nil
        if (bm.get_process_notifications)(l_0_4) ~= nil then
          for l_0_9,l_0_10 in ipairs((bm.get_process_notifications)(l_0_4)) do
            local l_0_6, l_0_7 = nil
            -- DECOMPILER ERROR at PC69: Confused about usage of register: R7 in 'UnsetPending'

            if R7_PC69.tag == 4 and R7_PC69.rawutf8p1 == l_0_6 then
              return mp.INFECTED
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

