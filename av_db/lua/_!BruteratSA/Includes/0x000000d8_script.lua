-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!BruteratSA\Includes\0x000000d8_luac 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
local l_0_1 = GetFileName(l_0_0)
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
if not contains(l_0_1, "badger_") then
  return mp.CLEAN
end
if (mp.IsKnownFriendlyFile)(l_0_0, true, false) then
  return mp.CLEAN
end
local l_0_2 = {}
-- DECOMPILER ERROR at PC54: No list found for R2 , SetList fails

-- DECOMPILER ERROR at PC55: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC56: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC57: Overwrote pending register: R5 in 'AssignReg'

if ("_x86")("_x64", "_svc") then
  return mp.INFECTED
end
return mp.CLEAN

