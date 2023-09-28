-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\32b392eb48b4\0x000006f4_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC10: Overwrote pending register: R0 in 'AssignReg'

do
  if this_sigattrlog[1] and (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC11: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC14: Confused about usage of register: R0 in 'UnsetPending'

  if not l_0_0.matched or not l_0_0.ppid then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC22: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_3, l_0_4 = , (string.match)(l_0_0.ppid, "pid:(%w+),ProcessStart:(%w+)")
  local l_0_5 = nil
  local l_0_6 = tonumber(l_0_4)
  local l_0_7, l_0_8 = , (mp.bsplit)(tonumber(l_0_5), 32)
  local l_0_9 = nil
  ;
  (mp.TriggerScanResource)("ems", (string.format)("ppids:{{%d,%d,%d}}\000", l_0_6, l_0_8, R11_PC42))
  return mp.INFECTED
end

