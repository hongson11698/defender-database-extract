-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\43b3abed4974\0x00001478_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9 = nil
  end
  -- DECOMPILER ERROR at PC35: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC42: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC49: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC56: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC63: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC70: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC77: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC86: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC86: Unhandled construct in 'MakeBoolean' P3

  if (((this_sigattrlog[2]).matched and (this_sigattrlog[2]).wp2 ~= nil and (string.match)((this_sigattrlog[2]).utf8p2, "%d+%.%d+%.%d+%.%d+")) or (string.match)((this_sigattrlog[2]).utf8p2, "%s%-%-listen[%s$]")) and (string.match)((this_sigattrlog[2]).utf8p2, "/bin/%a*sh") and ((string.match)((this_sigattrlog[2]).utf8p2, "%s%-[ec]%s") or (string.match)((this_sigattrlog[2]).utf8p2, "%s%-%-exec%s") or (string.match)((this_sigattrlog[2]).utf8p2, "%s%-%-sh%-exec%s")) then
    TrackPidAndTechniqueBM("BM", "T1059", "Execution_ReShell")
    return mp.INFECTED
  end
  return mp.CLEAN
end

