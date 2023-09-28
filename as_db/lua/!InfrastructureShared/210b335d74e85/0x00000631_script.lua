-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\210b335d74e85\0x00000631_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_2, l_0_4, l_0_6 = nil, nil
if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p1 ~= nil then
  local l_0_1 = nil
else
  do
    -- DECOMPILER ERROR at PC26: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC40: Overwrote pending register: R1 in 'AssignReg'

    if (not (this_sigattrlog[6]).matched or (this_sigattrlog[6]).utf8p1 == nil or (this_sigattrlog[7]).matched) and (this_sigattrlog[7]).utf8p1 ~= nil then
      local l_0_3 = nil
    else
      do
        -- DECOMPILER ERROR at PC54: Overwrote pending register: R1 in 'AssignReg'

        -- DECOMPILER ERROR at PC68: Overwrote pending register: R1 in 'AssignReg'

        if (not (this_sigattrlog[8]).matched or (this_sigattrlog[8]).utf8p1 == nil or (this_sigattrlog[9]).matched) and (this_sigattrlog[9]).utf8p1 ~= nil then
          local l_0_5 = nil
        else
          do
            -- DECOMPILER ERROR at PC82: Overwrote pending register: R1 in 'AssignReg'

            -- DECOMPILER ERROR at PC96: Overwrote pending register: R1 in 'AssignReg'

            do
              if (not (this_sigattrlog[10]).matched or (this_sigattrlog[10]).utf8p1 == nil or (this_sigattrlog[11]).matched) and (this_sigattrlog[11]).utf8p1 ~= nil then
                local l_0_7, l_0_9, l_0_10, l_0_11, l_0_12, l_0_13 = , (this_sigattrlog[5]).utf8p1
              end
              -- DECOMPILER ERROR at PC99: Confused about usage of register: R1 in 'UnsetPending'

              local l_0_8 = (sysio.ReadFile)(l_0_9, 1, 3)
              -- DECOMPILER ERROR at PC104: Confused about usage of register: R1 in 'UnsetPending'

              if l_0_9 and l_0_8 and l_0_8 == "ELF" then
                TrackPidAndTechniqueBM("BM", "T1021.004", "LateralMovement_SshConnectionInBruteDrop")
                reportRelatedBmHits()
                -- DECOMPILER ERROR at PC119: Confused about usage of register: R1 in 'UnsetPending'

                ;
                (bm.add_related_file)(l_0_9)
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

