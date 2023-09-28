-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000043_luac 

-- params : ...
-- function num : 0
if (mp.GetHSTRCallerId)() ~= mp.HSTR_CALLER_SMS then
  return mp.CLEAN
end
if (mp.GetSMSProcArchitecture)() ~= mp.SMS_PROC_ARCH_X64 then
  return mp.CLEAN
end
local l_0_0 = (mp.GetPEBAddress)()
local l_0_1 = (mp.ReadProcMem)(l_0_0 + 16, 8)
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = (mp.readu_u64)(l_0_1, 1)
local l_0_3 = (mp.GetSMSMappedFilename)(l_0_2)
if not l_0_3 then
  return mp.CLEAN
end
if not (string.find)(l_0_3, "conhost.exe", -11, true) then
  return mp.CLEAN
end
l_0_1 = (mp.ReadProcMem)(l_0_2, 1024)
if not l_0_1 then
  return mp.CLEAN
end
local l_0_4 = (mp.readu_u32)(l_0_1, 61)
if l_0_4 > 896 then
  return mp.CLEAN
end
local l_0_5 = (mp.readu_u32)(l_0_1, 1 + l_0_4)
if l_0_5 ~= 17744 then
  return mp.CLEAN
end
local l_0_6 = l_0_2 + (mp.readu_u32)(l_0_1, 1 + l_0_4 + 80)
local l_0_7 = (mp.hstr_full_log)()
for l_0_11,l_0_12 in ipairs(l_0_7) do
  if l_0_12.matched and l_0_12.VA then
    local l_0_13 = l_0_12.VA
    if l_0_13 < l_0_2 or l_0_6 <= l_0_13 then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

