-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001249_luac 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
if not peattributes.hasexports then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[1]).Size == 0 then
  return mp.CLEAN
end
if peattributes.ismsil then
  return mp.CLEAN
end
if peattributes.isvbnative or peattributes.isvbpcode then
  return mp.CLEAN
end
if (mp.get_mpattribute)("Win32/AutoIt") or (mp.get_mpattribute)("Win32/AutoIt_HSTR1") or (mp.get_mpattribute)("Win32/AutoIt_HSTR2") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("HSTR:Win32/DelphiFile") or (mp.get_mpattribute)("SIGATTR:DelphiFile") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("HSTR:NSIS.gen!A") or (mp.get_mpattribute)("HSTR:NSIS_Installer") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("ValidDigitalSignature") then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  local l_0_2 = {}
  l_0_2[".exe"] = true
  l_0_2[".dll"] = true
  l_0_2[".cpl"] = true
  l_0_2[".ocx"] = true
  l_0_2[".pyd"] = true
  l_0_2[".pyc"] = true
  l_0_2[".tmp"] = true
  l_0_2[".zip"] = true
  l_0_2[".rar"] = true
  l_0_2[".dat"] = true
  if l_0_2[((string.lower)(l_0_1)):sub(-4)] then
    return mp.CLEAN
  end
  local l_0_3 = (mp.getfilesize)()
  if l_0_3 > 52428800 then
    return mp.CLEAN
  end
  if l_0_3 < 10485760 then
    return mp.CLEAN
  end
  local l_0_4 = pehdr.NumberOfSections
  local l_0_5 = (pesecs[1]).SizeOfRawData
  -- DECOMPILER ERROR at PC178: Unhandled construct in 'MakeBoolean' P1

  -- DECOMPILER ERROR at PC178: Unhandled construct in 'MakeBoolean' P1

  if peattributes.hasappendeddata and l_0_4 == 5 and l_0_5 <= 237568 and l_0_5 >= 36864 then
    local l_0_6 = (pesecs[l_0_4]).PointerToRawData + (pesecs[l_0_4]).SizeOfRawData
    local l_0_7 = l_0_3 - l_0_6
    if l_0_7 > 51380224 then
      return mp.CLEAN
    end
    if l_0_7 < 10485760 then
      return mp.CLEAN
    end
    ;
    (mp.readprotection)(false)
    local l_0_8 = (mp.readfile)(l_0_6, 16)
    if (string.find)(l_0_8, "%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]") then
      (mp.set_mpattribute)("Lua:DllGamObfusHugeOverlay")
      ;
      (mp.set_mpattribute)("MpRequestHookwowM")
    end
  end
end
do
  if l_0_4 == 3 then
    l_0_5 = (pesecs[2]).SizeOfRawData
    if l_0_5 <= 237568 and l_0_5 >= 36864 then
      local l_0_9 = (pesecs[l_0_4]).PointerToRawData + (pesecs[l_0_4]).SizeOfRawData
      local l_0_10 = l_0_3 - l_0_9
      if l_0_10 > 51380224 then
        return mp.CLEAN
      end
      if l_0_10 < 10485760 then
        return mp.CLEAN
      end
      ;
      (mp.readprotection)(false)
      local l_0_11 = (mp.readfile)(l_0_9, 16)
      if (string.find)(l_0_11, "%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]") then
        (mp.set_mpattribute)("//Lua:DllUpxHugeOverlay")
        ;
        (mp.set_mpattribute)("MpRequestHookwowM")
      end
    end
  end
  do
    if not peattributes.hasappendeddata and l_0_4 == 6 and l_0_5 <= 65536 and l_0_5 >= 24576 then
      local l_0_12 = (pesecs[l_0_4]).SizeOfRawData
      local l_0_13 = (pesecs[l_0_4]).PointerToRawData
      if l_0_12 > 51380224 then
        return mp.CLEAN
      end
      if l_0_12 < 10485760 then
        return mp.CLEAN
      end
      ;
      (mp.readprotection)(false)
      local l_0_14 = (mp.readfile)(l_0_13, 16)
      if (string.find)(l_0_14, "%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]") then
        (mp.set_mpattribute)("Lua:DllGamObfusHugeLastSection")
        ;
        (mp.set_mpattribute)("MpRequestHookwowM")
      end
    end
    do
      return mp.CLEAN
    end
  end
end

