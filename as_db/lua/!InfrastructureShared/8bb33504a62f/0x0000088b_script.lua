-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\8bb33504a62f\0x0000088b_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC17: Overwrote pending register: R2 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 and (this_sigattrlog[1]).utf8p1 then
    local l_0_9 = nil
    local l_0_0, l_0_1, l_0_3, l_0_5, l_0_7 = nil, nil, nil
  end
  do
    if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 and (this_sigattrlog[4]).utf8p1 then
      local l_0_10 = l_0_9
      local l_0_2, l_0_4, l_0_6, l_0_8 = (this_sigattrlog[4]).utf8p2, (this_sigattrlog[4]).utf8p1
    end
    -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC48: Confused about usage of register: R1 in 'UnsetPending'

    if isnull(l_0_10) and isnull(l_0_2) then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC55: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC55: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_10 ~= l_0_2 then
      return mp.CLEAN
    end
    local l_0_11 = nil
    local l_0_12 = nil
    for l_0_16,l_0_17 in (string.gmatch)(l_0_12, "(%w+):(%w+)") do
      local l_0_13, l_0_14, l_0_15, l_0_16 = , {}, {}
      -- DECOMPILER ERROR at PC68: Confused about usage of register: R9 in 'UnsetPending'

      -- DECOMPILER ERROR at PC68: Confused about usage of register: R10 in 'UnsetPending'

      l_0_15[R9_PC68] = R10_PC68
    end
    -- DECOMPILER ERROR at PC72: Confused about usage of register: R4 in 'UnsetPending'

    local l_0_18 = nil
    -- DECOMPILER ERROR at PC75: Confused about usage of register: R4 in 'UnsetPending'

    local l_0_19 = nil
    -- DECOMPILER ERROR at PC77: Confused about usage of register: R4 in 'UnsetPending'

    local l_0_20 = nil
    if scrubData(l_0_15.usrname) ~= nil and scrubData(l_0_15.domain) ~= nil and l_0_15.remoteip ~= nil then
      local l_0_21 = nil
      local l_0_22 = nil
      local l_0_23 = nil
      -- DECOMPILER ERROR at PC90: Confused about usage of register: R8 in 'UnsetPending'

      ;
      (table.insert)(l_0_21, {l_0_19, l_0_18; RemoteClientUser = l_0_22, RemoteClientDomain = l_0_23, RemoteClientIP = l_0_15.remoteip})
      ;
      (bm.add_related_string)("RemoteClientData_table", safeJsonSerialize(l_0_21), bm.RelatedStringBMReport)
      return mp.INFECTED
    end
    do
      return mp.CLEAN
    end
  end
end

