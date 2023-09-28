-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\8ad75815d146\0x00007e16_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
local l_0_2 = (string.match)(l_0_1, "msiexec%.?e?x?e?\"?\'?%s+(.*)$")
local l_0_3 = contains
local l_0_4 = l_0_2
local l_0_5 = {}
-- DECOMPILER ERROR at PC22: No list found for R5 , SetList fails

-- DECOMPILER ERROR at PC26: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC27: Overwrote pending register: R3 in 'AssignReg'

if l_0_3 then
  return l_0_3
end
-- DECOMPILER ERROR at PC29: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC30: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC35: Overwrote pending register: R4 in 'AssignReg'

if l_0_3 == nil then
  return l_0_4
end
-- DECOMPILER ERROR at PC37: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC38: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC40: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC41: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC42: Overwrote pending register: R7 in 'AssignReg'

l_0_4 = l_0_4(l_0_5(".msi", ".exe"))
if l_0_4 ~= "cmd.exe" then
  return mp.CLEAN
end
if (mp.GetProcessCommandLine)(l_0_3.ppid) ~= nil and (string.match)(((mp.GetProcessCommandLine)(l_0_3.ppid)):lower(), "^%s*cmd%s*$") then
  return mp.INFECTED
end
do return mp.CLEAN end
-- DECOMPILER ERROR at PC70: Confused about usage of register R5 for local variables in 'ReleaseLocals'


