-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\67d73fbd67ad\0x00001476_luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0)
  -- function num : 0_0
  if l_1_0 == nil then
    return false
  end
  local l_1_1 = checkParentCmdline
  local l_1_2 = l_1_0
  local l_1_3 = {}
  local l_1_4 = {}
  -- DECOMPILER ERROR at PC10: No list found for R4 , SetList fails

  local l_1_5 = {}
  -- DECOMPILER ERROR at PC12: Overwrote pending register: R6 in 'AssignReg'

  local l_1_6 = ""
  do
    local l_1_7 = "python3 -u bin/WALinuxAgent"
    -- DECOMPILER ERROR at PC14: No list found for R5 , SetList fails

    -- DECOMPILER ERROR at PC15: No list found for R3 , SetList fails

    l_1_4 = 3
    do return l_1_1(l_1_2, l_1_3, l_1_4) end
    -- DECOMPILER ERROR at PC19: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end

local l_0_1 = (mp.GetScannedPPID)()
if isParentPackageManager(l_0_1) or l_0_0(l_0_1) then
  return mp.CLEAN
end
local l_0_2 = (mp.GetParentProcInfo)()
if l_0_2 ~= nil then
  TrackPidAndTechnique(l_0_2.ppid, "T1562.004", "DefenseEvasion")
end
if l_0_1 ~= nil and (IsTacticObservedForPid(l_0_1, "CommandAndControl_RemoteFileCopy") or IsTacticObservedForParents(l_0_1, "CommandAndControl_RemoteFileCopy", 2)) then
  return mp.INFECTED
end
return mp.CLEAN

