-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000124c_luac 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
if peattributes.isappcontainer or peattributes.resource_only_dll or peattributes.no_ep or peattributes.dmg_entrypoint or peattributes.dmg_not_executable_image or peattributes.dmg_truncated then
  return mp.CLEAN
end
local l_0_0 = (mp.GetCertificateInfo)()
for l_0_4,l_0_5 in pairs(l_0_0) do
  if l_0_5.Signers ~= nil then
    return mp.CLEAN
  end
end
local l_0_6, l_0_7 = pcall(mp.get_parent_filehandle)
if l_0_6 then
  l_0_6 = pcall(mp.get_filesize_by_handle, l_0_7)
  if l_0_6 then
    return mp.CLEAN
  end
end
local l_0_8 = (string.lower)((mp.getfilename)())
if (string.sub)(l_0_8, 1, 1) ~= "c" then
  return mp.CLEAN
end
if (string.find)(l_0_8, "program files", 1, true) ~= nil or (string.find)(l_0_8, "c:\\windows\\system32\\", 1, true) ~= nil or (string.find)(l_0_8, "c:\\windows\\syswow64\\", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_9 = (string.lower)((mp.getfilename)(mp.FILEPATH_QUERY_FNAME))
if l_0_9 == nil or (string.len)(l_0_9) > 16 then
  return mp.CLEAN
end
local l_0_10 = (mp.getfilesize)()
if l_0_10 < 256 or l_0_10 > 1048576 then
  return mp.CLEAN
end
local l_0_11 = {}
l_0_11["goopdate.dll"] = mp.INFECTED
l_0_11["mpsvc.dll"] = mp.INFECTED
l_0_11["mpclient.dll"] = mp.INFECTED
l_0_11["iphlpapi.dll"] = mp.INFECTED
l_0_11["libcef.dll"] = mp.INFECTED
l_0_11["activeds.dll"] = mp.INFECTED
l_0_11["qclite.dll"] = mp.INFECTED
l_0_11["msimg32.dll"] = mp.INFECTED
l_0_11["aclmgr.dll"] = mp.INFECTED
l_0_11["rcdll.dll"] = mp.INFECTED
l_0_11["iscsiexe.dll"] = mp.INFECTED
l_0_11["iviewers.dll"] = mp.INFECTED
l_0_11["mscoree.dll"] = mp.INFECTED
l_0_11["version.dll"] = mp.INFECTED
l_0_11["cryptsp.dll"] = mp.INFECTED
l_0_11["msedgeupdate.dll"] = mp.INFECTED
l_0_11["midlrtmd.dll"] = mp.INFECTED
l_0_11["duser.dll"] = mp.INFECTED
l_0_11["dllsafecheck.dll"] = mp.INFECTED
l_0_11["userenv.dll"] = mp.INFECTED
l_0_11["k7sysmn1.dll"] = mp.INFECTED
l_0_11["cryptbase.dll"] = mp.INFECTED
l_0_11["ncrypt.dll"] = mp.INFECTED
l_0_11["edputil.dll"] = mp.INFECTED
l_0_11["dbgeng.dll"] = mp.INFECTED
l_0_11["faultrep.dll"] = mp.INFECTED
l_0_11["wsock32.dll"] = mp.INFECTED
l_0_11["wintthp.dll"] = mp.INFECTED
l_0_11["dismcore.dll"] = mp.INFECTED
l_0_11["hccutils.dll"] = mp.INFECTED
l_0_11["x32bridge.dll"] = mp.INFECTED
l_0_11["wdsync.dll"] = mp.INFECTED
l_0_11["wdlocal.dll"] = mp.INFECTED
l_0_11["cnqmutil.dll"] = mp.INFECTED
l_0_11["hd-common.dll"] = mp.INFECTED
l_0_11["imobiehelper.dll"] = mp.INFECTED
l_0_11["toolsbag.dll"] = mp.INFECTED
l_0_11["mvvm.dll"] = mp.INFECTED
l_0_11["textshaping.dll"] = mp.INFECTED
l_0_11["sqlite3.dll"] = mp.LOWFI
l_0_11["ffmpeg.dll"] = mp.LOWFI
l_0_11["libvlc.dll"] = mp.LOWFI
if l_0_11[l_0_9] == mp.INFECTED then
  return mp.INFECTED
else
  if l_0_11[l_0_9] == mp.LOWFI then
    return mp.LOWFI
  end
end
return mp.CLEAN

