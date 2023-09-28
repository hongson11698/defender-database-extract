-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\17db3b537cdcb\0x00000636_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_3, l_0_4, l_0_6, l_0_7, l_0_9, l_0_10, l_0_13 = nil, nil, nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_2 = nil
else
  do
    -- DECOMPILER ERROR at PC26: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC40: Overwrote pending register: R2 in 'AssignReg'

    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p2 ~= nil then
      local l_0_5 = nil
    else
      do
        -- DECOMPILER ERROR at PC54: Overwrote pending register: R2 in 'AssignReg'

        -- DECOMPILER ERROR at PC68: Overwrote pending register: R2 in 'AssignReg'

        do
          if (not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p2 == nil or (this_sigattrlog[5]).matched) and (this_sigattrlog[5]).utf8p2 ~= nil then
            local l_0_8, l_0_11, l_0_14, l_0_19, l_0_20 = , (this_sigattrlog[1]).utf8p2
          else
          end
          if not (this_sigattrlog[6]).matched or (this_sigattrlog[6]).utf8p2 == nil or (this_sigattrlog[6]).utf8p2 then
            do
              if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).utf8p1 ~= nil then
                local l_0_12, l_0_15, l_0_16, l_0_17 = (this_sigattrlog[7]).utf8p1
              end
              -- DECOMPILER ERROR at PC100: Confused about usage of register: R2 in 'UnsetPending'

              local l_0_18 = nil
              do
                if l_0_18 and (string.match)(l_0_16, "%s(/.+/.+)%s") then
                  local l_0_21 = nil
                  -- DECOMPILER ERROR at PC117: Confused about usage of register: R2 in 'UnsetPending'

                  if (string.match)(l_0_18, "/.+/") and (string.find)(l_0_16, (string.match)(l_0_18, "/.+/"), 1, true) and isTainted(l_0_21, "remote_file_created_taint") then
                    taint(l_0_18, "remote_file_created_taint", 3600)
                    TrackPidAndTechniqueBM("BM", "T1105", "CommandandControl_IngressToolTransfer_mt2023")
                    return mp.INFECTED
                  end
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

