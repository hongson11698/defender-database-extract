-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4ab3afa57ca8\0x00007ed1_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
local l_0_1 = {}
-- DECOMPILER ERROR at PC13: No list found for R1 , SetList fails

-- DECOMPILER ERROR at PC14: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC15: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC16: Overwrote pending register: R4 in 'AssignReg'

if ("winscp-")("winscp_", "shimgen.exe") then
  return mp.CLEAN
end
if not contains(l_0_0, (MpCommon.ExpandEnvironmentVariables)("%systemdrive%")) then
  return mp.CLEAN
end
do
  local l_0_2 = {}
  -- DECOMPILER ERROR at PC45: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC46: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC47: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC48: Overwrote pending register: R5 in 'AssignReg'

  if (":\\programData\\")(":\\perflogs\\", ":\\windows\\help\\") then
    return mp.INFECTED
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

