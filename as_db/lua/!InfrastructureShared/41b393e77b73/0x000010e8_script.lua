-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\41b393e77b73\0x000010e8_luac 

-- params : ...
-- function num : 0
local l_0_11 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0, l_0_1, l_0_3, l_0_4, l_0_6 = nil, false
  l_0_3 = string
  l_0_3 = l_0_3.lower
  l_0_4 = this_sigattrlog
  l_0_4 = l_0_4[1]
  l_0_4 = l_0_4.utf8p2
  l_0_3 = l_0_3(l_0_4)
  l_0_0 = l_0_3
  local l_0_2, l_0_5, l_0_8, l_0_9, l_0_10 = nil
end
do
  -- DECOMPILER ERROR at PC33: Overwrote pending register: R0 in 'AssignReg'

  if ((this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil and l_0_11 == nil) or (string.lower)((this_sigattrlog[2]).utf8p2) == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC51: Overwrote pending register: R0 in 'AssignReg'

  local l_0_7 = nil
  if l_0_7:find("powershell%.exe$") or l_0_7:find("cmd%.exe$") then
    local l_0_12, l_0_13 = , (bm.get_process_relationships)()
    for l_0_17,l_0_18 in ipairs(l_0_13) do
      local l_0_14 = nil
      -- DECOMPILER ERROR at PC70: Confused about usage of register: R9 in 'UnsetPending'

      -- DECOMPILER ERROR at PC75: Confused about usage of register: R9 in 'UnsetPending'

      if IsPidObservedGlobal(l_0_9.ppid) then
        local l_0_20 = GetTacticsTableForPid(l_0_9.ppid)
        if l_0_20 ~= nil then
          for l_0_24,l_0_25 in pairs(l_0_20) do
            local l_0_21 = GetTechniquesTableForPid(l_0_19.ppid)
            AddTacticForPid(l_0_11, l_0_25)
            l_0_12 = true
          end
        end
        do
          -- DECOMPILER ERROR at PC93: Confused about usage of register: R11 in 'UnsetPending'

          -- DECOMPILER ERROR at PC96: Confused about usage of register: R11 in 'UnsetPending'

          if l_0_21 ~= nil then
            for l_0_29,l_0_30 in pairs(l_0_21) do
              local l_0_26 = nil
              AddTechniqueForPid(l_0_11, l_0_30)
              l_0_12 = true
            end
          end
          do
            do
              TrackPidAndTechniqueBM(l_0_19.ppid, "tt_to_child", "tt_to_child")
              -- DECOMPILER ERROR at PC111: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC111: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC111: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC111: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
    end
  end
  if l_0_12 then
    l_0_13 = TrackPidAndTechniqueBM
    l_0_13(l_0_11, "has_inherited_tt", "has_inherited_tt")
    l_0_13 = mp
    l_0_13 = l_0_13.INFECTED
    return l_0_13
  end
  l_0_13 = mp
  l_0_13 = l_0_13.CLEAN
  return l_0_13
end

