-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2db3c7c1ef4d\0x000001cb_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  local l_0_0, l_0_1 = nil, nil
  l_0_1 = (this_sigattrlog[1]).ppid
  local l_0_2 = nil
end
do
  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC18: Confused about usage of register: R1 in 'UnsetPending'

  if l_0_0 == nil or l_0_1 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

  if (string.sub)(l_0_0, 1, 1) == "%" then
    return mp.CLEAN
  end
  local l_0_3, l_0_4 = nil
  if IsLegacyOrgMachine() == true then
    (bm.trigger_sig)("LegacyOrgMachine", R6_PC43, l_0_4)
  end
  local l_0_5 = nil
  -- DECOMPILER ERROR at PC58: Confused about usage of register: R4 in 'UnsetPending'

  -- DECOMPILER ERROR at PC63: Confused about usage of register: R4 in 'UnsetPending'

  if (versioning.GetCloudBlockLevel)() >= 4 and IsLegacyOrgMachine() == false and (this_sigattrlog[1]).utf8p2 ~= nil and #(this_sigattrlog[1]).utf8p2 >= 1 then
    local l_0_6 = nil
    -- DECOMPILER ERROR at PC70: Confused about usage of register: R4 in 'UnsetPending'

    -- DECOMPILER ERROR at PC70: Overwrote pending register: R6 in 'AssignReg'

    -- DECOMPILER ERROR at PC73: Overwrote pending register: R6 in 'AssignReg'

    -- DECOMPILER ERROR at PC74: Confused about usage of register: R4 in 'UnsetPending'

    if (string.find)(R6_PC43, " ", 1, true) ~= nil and (string.find)(R6_PC43, " ", 1, true) ~= R6_PC43 then
      R6_PC43 = R6_PC43((this_sigattrlog[1]).utf8p2)
      local l_0_7 = nil
      if R6_PC43 ~= nil then
        local l_0_8 = nil
        -- DECOMPILER ERROR at PC89: Confused about usage of register: R7 in 'UnsetPending'

        -- DECOMPILER ERROR at PC96: Confused about usage of register: R7 in 'UnsetPending'

        if (MpCommon.GetPersistContextCountNoPath)("CommandLineCustomHash:" .. R6_PC43) > 0 and not (MpCommon.QueryPersistContextNoPath)("CommandLineCustomHash:" .. R6_PC43, l_0_4) then
          local l_0_9 = nil
          local l_0_10 = nil
          for l_0_14,l_0_15 in ipairs((MpCommon.GetPersistContextNoPath)("CommandLineCustomHash:" .. R6_PC43)) do
            local l_0_11, l_0_12 = , false
            -- DECOMPILER ERROR at PC103: Confused about usage of register: R14 in 'UnsetPending'

            if #R14_PC103 >= 5 then
              if (string.match)(R14_PC103, "^[tT][0-9][0-9][0-9][0-9]") then
                TrackPidAndTechniqueBM(l_0_4, (string.match)(R14_PC103, "^([tT][0-9][0-9][0-9][0-9][%.]?[0-9]?[0-9]?[0-9]?):?(.*)"), R20_PC123, 0)
                l_0_12 = true
              else
                do
                  -- DECOMPILER ERROR at PC128: Confused about usage of register: R14 in 'UnsetPending'

                  -- DECOMPILER ERROR at PC136: Confused about usage of register: R14 in 'UnsetPending'

                  do
                    if (string.sub)(l_0_17, 1, 1) == "[" then
                      local l_0_18, l_0_19 = nil
                      if (string.match)(l_0_17, "^%[(.-)%]=(.+)") ~= nil and l_0_17 ~= nil then
                        (bm.trigger_sig)((string.match)(l_0_17, "^%[(.-)%]=(.+)"), R19_PC148, R20_PC123)
                        l_0_12 = true
                      end
                    end
                    -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                    -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
            end
          end
          -- DECOMPILER ERROR at PC152: Confused about usage of register: R9 in 'UnsetPending'

          if l_0_12 then
            (MpCommon.AppendPersistContextNoPath)(l_0_10, l_0_4, 0)
          end
        end
      end
    end
  end
  do
    local l_0_20 = nil
    if (MpCommon.GetPersistContextCount)(l_0_3) <= 0 or (MpCommon.QueryPersistContextNoPath)(l_0_4, "FilePersistContextToProcessRelay.A") == true then
      return mp.INFECTED
    end
    if (MpCommon.GetPersistContextCount)(l_0_3) > 100 then
      return mp.INFECTED
    end
    local l_0_21 = nil
    for l_0_25,l_0_26 in ipairs((MpCommon.GetPersistContext)(l_0_3)) do
      local l_0_22, l_0_23 = nil
      -- DECOMPILER ERROR at PC192: Confused about usage of register: R11 in 'UnsetPending'

      -- DECOMPILER ERROR at PC196: Confused about usage of register: R11 in 'UnsetPending'

      -- DECOMPILER ERROR at PC201: Confused about usage of register: R11 in 'UnsetPending'

      -- DECOMPILER ERROR at PC208: Confused about usage of register: R11 in 'UnsetPending'

      if not (MpCommon.QueryPersistContextNoPath)(l_0_4, l_0_10) and #l_0_10 >= 4 and (string.match)(l_0_10, "^[tT][0-9][0-9][0-9][0-9]") then
        TrackPidAndTechniqueBM(l_0_4, (string.match)(l_0_10, "^([tT][0-9][0-9][0-9][0-9][%.]?[0-9]?[0-9]?[0-9]?):?(.*)"), R17_PC217, nil, R19_PC148)
        do
          do
            if #l_0_28 > 5 then
              local l_0_29 = nil
              -- DECOMPILER ERROR at PC230: Overwrote pending register: R17 in 'AssignReg'

              -- DECOMPILER ERROR at PC237: Overwrote pending register: R17 in 'AssignReg'

              if not (MpCommon.QueryPersistContextNoPath)(l_0_4, R17_PC217) then
                (MpCommon.AppendPersistContextNoPath)(l_0_4, R17_PC217, 0)
              end
            end
            -- DECOMPILER ERROR at PC244: Overwrote pending register: R17 in 'AssignReg'

            ;
            (MpCommon.AppendPersistContextNoPath)(l_0_4, l_0_28, R17_PC217)
            -- DECOMPILER ERROR at PC246: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC246: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC246: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    if not (MpCommon.QueryPersistContextNoPath)(l_0_4, "FilePersistContextToProcessRelay.A") then
      (MpCommon.AppendPersistContextNoPath)(l_0_4, "FilePersistContextToProcessRelay.A", 0)
    end
    return mp.INFECTED
  end
end

