-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\159b39469c3a0\0x00007fe1_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched then
  local l_0_0, l_0_3, l_0_6, l_0_8, l_0_11, l_0_13, l_0_16, l_0_25, l_0_26, l_0_27, l_0_36 = nil, nil, nil
  l_0_8 = this_sigattrlog
  l_0_8 = l_0_8[1]
  l_0_3 = l_0_8.utf8p1
  local l_0_1, l_0_4, l_0_7, l_0_9, l_0_12, l_0_14, l_0_17, l_0_28, l_0_37 = nil
end
do
  if (this_sigattrlog[2]).matched then
    local l_0_2, l_0_5, l_0_10 = , (this_sigattrlog[2]).utf8p2
  else
    do
      -- DECOMPILER ERROR at PC30: Confused about usage of register: R1 in 'UnsetPending'

      -- DECOMPILER ERROR at PC36: Confused about usage of register: R2 in 'UnsetPending'

      -- DECOMPILER ERROR at PC48: Confused about usage of register: R1 in 'UnsetPending'

      if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 and l_0_5 and (string.find)((string.lower)((this_sigattrlog[3]).utf8p2), "tcpip6.hiv", -20, true) and (string.find)((string.lower)(l_0_5), "networx", -20, true) then
        return mp.CLEAN
      end
      do
        if (this_sigattrlog[4]).matched then
          local l_0_15, l_0_18, l_0_29, l_0_38 = , (this_sigattrlog[4]).utf8p2
        end
        -- DECOMPILER ERROR at PC68: Confused about usage of register: R2 in 'UnsetPending'

        -- DECOMPILER ERROR at PC72: Confused about usage of register: R2 in 'UnsetPending'

        if l_0_29 then
          local l_0_19 = nil
          if (mp.GetExecutablesFromCommandLine)(l_0_29) then
            for l_0_23,l_0_24 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_29)) do
              local l_0_20, l_0_21, l_0_22 = nil
              -- DECOMPILER ERROR at PC82: Confused about usage of register: R8 in 'UnsetPending'

              ;
              (bm.add_related_file)(l_0_26)
            end
          end
        end
        do
          if l_0_19 then
            local l_0_30 = nil
            if (mp.GetExecutablesFromCommandLine)(l_0_19) then
              for l_0_34,l_0_35 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_19)) do
                local l_0_31, l_0_32 = nil
                -- DECOMPILER ERROR at PC100: Confused about usage of register: R8 in 'UnsetPending'

                ;
                (bm.add_related_file)(l_0_26)
              end
            end
          end
          do
            add_parents()
            return mp.INFECTED
          end
        end
      end
    end
  end
end

