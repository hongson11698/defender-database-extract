-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\c9b3262e91fb\0x00001482_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1 = (this_sigattrlog[2]).ppid
    else
    end
    -- DECOMPILER ERROR at PC43: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[4]).matched or (this_sigattrlog[5]).matched then
        local l_0_2, l_0_3, l_0_4, l_0_5 = (this_sigattrlog[4]).ppid, nil
      else
      end
      do
        if not (this_sigattrlog[6]).matched or (this_sigattrlog[7]).matched then
          local l_0_6 = (this_sigattrlog[6]).ppid
        end
        -- DECOMPILER ERROR at PC65: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC71: Confused about usage of register: R0 in 'UnsetPending'

        if l_0_6 ~= nil and (string.lower)((this_sigattrlog[7]).utf8p1) ~= nil then
          local l_0_7 = nil
          if (bm.get_process_notifications)(l_0_6) ~= nil then
            for l_0_11,l_0_12 in ipairs((bm.get_process_notifications)(l_0_6)) do
              local l_0_8, l_0_9 = nil
              -- DECOMPILER ERROR at PC79: Confused about usage of register: R7 in 'UnsetPending'

              if R7_PC79.tag == bm.ActionTagFileCreate and (string.lower)(R7_PC79.rawutf8p1) == l_0_8 then
                TrackPidAndTechniqueBM("BM", "T1105", "CommandAndControl")
                return mp.INFECTED
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

