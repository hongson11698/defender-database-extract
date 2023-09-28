-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000116f_luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 128 or mp.FOOTERPAGE_SZ < 22 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) ~= 67324752 then
  return mp.CLEAN
end
local l_0_0 = (mp.readu_u16)(headerpage, 11)
local l_0_1 = (mp.readu_u16)(headerpage, 13)
local l_0_2, l_0_3 = pcall(MpCommon.DosTimeToFileTime, l_0_0, l_0_1)
if not l_0_2 then
  return mp.CLEAN
end
if l_0_3 == 0 then
  return mp.CLEAN
end
local l_0_4 = (MpCommon.GetCurrentTimeT)()
local l_0_5, l_0_6 = pcall(MpCommon.TimeTToFileTime, l_0_4)
if not l_0_5 then
  return mp.CLEAN
end
if l_0_6 == nil then
  return mp.CLEAN
end
if l_0_3 == nil then
  return mp.CLEAN
end
if l_0_3 < l_0_6 then
  local l_0_7 = 864000000000
  local l_0_8 = l_0_6 - l_0_3
  if l_0_8 <= 5 * l_0_7 then
    if (mp.get_mpattribute)("SCPT:JarFile") then
      (mp.set_mpattribute)("//Lua:JarTimeStampLastFiveDays")
    else
      ;
      (mp.set_mpattribute)("//Lua:ZipTimeStampLastFiveDays")
    end
  end
  if l_0_8 <= 10 * l_0_7 then
    if (mp.get_mpattribute)("SCPT:JarFile") then
      (mp.set_mpattribute)("//Lua:JarTimeStampLastTenDays")
    else
      ;
      (mp.set_mpattribute)("//Lua:ZipTimeStampLastTenDays")
    end
  end
  if l_0_8 <= 30 * l_0_7 then
    if (mp.get_mpattribute)("SCPT:JarFile") then
      (mp.set_mpattribute)("//Lua:JarTimeStampLastThirtyDays")
    else
      ;
      (mp.set_mpattribute)("//Lua:ZipTimeStampLastThirtyDays")
    end
  end
  if l_0_8 <= 365 * l_0_7 then
    if (mp.get_mpattribute)("SCPT:JarFile") then
      (mp.set_mpattribute)("//Lua:JarTimeStampLastYear")
    else
      ;
      (mp.set_mpattribute)("//Lua:ZipTimeStampLastYear")
    end
  end
end
do
  return mp.CLEAN
end

