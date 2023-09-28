-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFRenamedRcloneSA\0x00001016_luac 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
if l_0_0 == nil then
  return mp.CLEAN
end
if not StringEndsWith(l_0_0, ".exe") then
  return mp.CLEAN
end
local l_0_1 = {}
-- DECOMPILER ERROR at PC36: No list found for R1 , SetList fails

-- DECOMPILER ERROR at PC37: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC38: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC39: Overwrote pending register: R4 in 'AssignReg'

if ("\\program files")("\\rclone.exe", "\\cmmagent.exe") then
  return mp.CLEAN
end
do
  local l_0_2 = (MpCommon.GetOriginalFileName)(l_0_0)
  -- DECOMPILER ERROR at PC55: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC56: Overwrote pending register: R6 in 'AssignReg'

  if l_0_2 and (string.find)(l_0_2, "\\gclone.exe", "\\lclone.exe", true) then
    return mp.INFECTED
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

