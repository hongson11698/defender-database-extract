-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000072d_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 100000000 then
  return mp.CLEAN
end
local l_0_0 = (bm.get_imagepath)()
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.PathToWin32Path)(l_0_0)
if not l_0_1 then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
if not (string.find)(l_0_1, "c:\\", 1, true) then
  return mp.CLEAN
end
if (string.find)(l_0_1, "\\program files", 1, true) or (string.find)(l_0_1, "\\windows", 1, true) or (string.find)(l_0_1, "\\services.exe", 1, true) or (string.find)(l_0_1, "\\ruby.exe", 1, true) or (string.find)(l_0_1, "\\nativerestagent.exe", 1, true) or (string.find)(l_0_1, "\\lindbak backoffice", 1, true) then
  return mp.CLEAN
end
local l_0_2 = (MpCommon.QueryPersistContext)(l_0_1, "NewPECreatedNoCert")
if not l_0_2 then
  return mp.CLEAN
end
if (mp.IsKnownFriendlyFile)(l_0_1, true, false) == true then
  return mp.CLEAN
end
local l_0_3 = (sysio.GetFileLastWriteTime)(l_0_1)
if ((sysio.GetLastResult)()).Success and l_0_3 ~= 0 then
  l_0_3 = l_0_3 / 10000000 - 11644473600
  local l_0_4 = (MpCommon.GetCurrentTimeT)()
  if l_0_4 < l_0_3 or l_0_4 - (l_0_3) > 600 then
    return mp.CLEAN
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

