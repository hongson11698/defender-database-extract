-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2f1d7215712a7\0x00007d74_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
local l_0_1 = (mp.GetParentProcInfo)(l_0_0)
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
if l_0_1 == "" or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (mp.GetProcessCommandLine)(l_0_0)
local l_0_3 = (mp.GetProcessCommandLine)(l_0_1)
do
  local l_0_4 = {}
  -- DECOMPILER ERROR at PC36: No list found for R4 , SetList fails

  -- DECOMPILER ERROR at PC37: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC38: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC39: Overwrote pending register: R7 in 'AssignReg'

  if ("sophosstopservices.bat")("\\syncro\\", "sophosremoval.ps1") then
    return mp.CLEAN
  end
  if contains(l_0_3, l_0_4) then
    return mp.CLEAN
  end
  do return mp.INFECTED end
  -- WARNING: undefined locals caused missing assignments!
end

