-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\192b3faa1f22e\0x00008119_luac 

-- params : ...
-- function num : 0
local l_0_0 = ((MpCommon.PathToWin32Path)((bm.get_imagepath)())):lower()
local l_0_1 = {}
-- DECOMPILER ERROR at PC25: No list found for R1 , SetList fails

-- DECOMPILER ERROR at PC26: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC27: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC28: Overwrote pending register: R4 in 'AssignReg'

if ("rclone.exe")("megasync.exe", "freefilesync.exe") then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC39: Overwrote pending register: R5 in 'AssignReg'

if not contains(l_0_0, (MpCommon.ExpandEnvironmentVariables)("realtimesync.exe")) then
  return mp.CLEAN
end
do
  local l_0_2 = {}
  -- DECOMPILER ERROR at PC49: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC50: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC59: Overwrote pending register: R6 in 'AssignReg'

  if not ("program files")(l_0_0, l_0_2) then
    TrackPidAndTechniqueBM("BM", "T1567", "FreeFileSync_Win32.exe")
    reportRelatedBmHits()
    add_parents()
    return mp.INFECTED
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

