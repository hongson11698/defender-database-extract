-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000001b1_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.GetImagePathFromPid)(l_0_0)
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (MpCommon.PathToWin32Path)(l_0_1)
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = (MpCommon.GetOriginalFileName)(l_0_2)
if l_0_3 == nil then
  return mp.CLEAN
end
if l_0_3 == "psexec.c" and not (string.find)((string.lower)(l_0_2), "psexec", 1, true) then
  if (mp.IsHipsRuleEnabled)("d1e49aac-8f56-4280-b9ba-993a6d77406c") ~= true then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

