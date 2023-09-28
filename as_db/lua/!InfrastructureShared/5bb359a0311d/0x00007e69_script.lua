-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb359a0311d\0x00007e69_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if not contains(l_0_0, (MpCommon.ExpandEnvironmentVariables)("%systemdrive%")) then
  return mp.CLEAN
end
do
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC28: No list found for R1 , SetList fails

  -- DECOMPILER ERROR at PC29: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC30: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC31: Overwrote pending register: R4 in 'AssignReg'

  if (":\\programData\\anydesk.exe")(":\\perflogs\\", ":\\windows\\help\\") then
    reportSessionInformationInclusive()
    add_parents()
    reportTimingData()
    return mp.INFECTED
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

