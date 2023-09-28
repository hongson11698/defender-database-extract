-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6eb34b7098c3\0x000004d5_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6 = nil
  end
  -- DECOMPILER ERROR at PC36: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC42: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC48: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC55: Confused about usage of register: R0 in 'UnsetPending'

  if (((this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil and not (string.lower)((this_sigattrlog[2]).utf8p2)) or (((string.lower)((this_sigattrlog[2]).utf8p2)):sub(1, 2) ~= "\\\\" and ((string.lower)((this_sigattrlog[2]).utf8p2)):sub(1, 3) ~= "\"\\\\" and ((string.lower)((this_sigattrlog[2]).utf8p2)):sub(1, 3) ~= "\'\\\\") or IsHostAttackServer((string.lower)((this_sigattrlog[2]).utf8p2))) then
    TrackPidAndTechniqueBM("BM", "T1057", "xfer_to_attackerserver_a")
    return mp.INFECTED
  end
  return mp.CLEAN
end

