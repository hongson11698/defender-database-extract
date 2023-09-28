-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\7bb3945edee4\0x00000378_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
  if not (string.find)(l_0_0, "^c:\\") and not (string.find)(l_0_0, "^\\\\") then
    return mp.CLEAN
  end
  if (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "rundll32.exe", 1, true) or (string.find)(l_0_0, "svchost.exe", 1, true) or (string.find)(l_0_0, "onedrive", 1, true) or (string.find)(l_0_0, "\\google", 1, true) or (string.find)(l_0_0, "msiexec.exe", 1, true) or (string.find)(l_0_0, "\\yandex", 1, true) or (string.find)(l_0_0, "dllhost.exe", 1, true) or (string.find)(l_0_0, "\\mail.ru", 1, true) or (string.find)(l_0_0, "\\steamapps\\", 1, true) or (string.find)(l_0_0, "\\local\\temp\\rar$", 1, true) or (string.find)(l_0_0, "\\local\\temp\\is-", 1, true) or (string.find)(l_0_0, "\\local\\temp\\ns", 1, true) or (string.find)(l_0_0, "\\local\\temp\\7z", 1, true) or (string.find)(l_0_0, "service.exe", 1, true) then
    return mp.CLEAN
  end
  local l_0_1 = (this_sigattrlog[1]).utf8p2
  if (sysio.IsFileExists)(l_0_1) then
    local l_0_2 = (string.lower)(l_0_1)
    if (string.find)(l_0_2, "program files", 1, true) or (string.find)(l_0_2, ".dll", 1, true) or (string.find)(l_0_2, ".cpl", 1, true) or (string.find)(l_0_2, ".ocx", 1, true) or (string.find)(l_0_2, ".tmp", 1, true) or (string.find)(l_0_2, ".ax", 1, true) then
      return mp.CLEAN
    end
    if (mp.IsKnownFriendlyFile)(l_0_1, true, false) == false then
      (bm.add_related_file)(l_0_1)
      if (versioning.IsSeville)() and (versioning.GetCloudBlockLevel)() >= 4 then
        TrackPidAndTechniqueBM("BM", "T1559.001", "interprocess_com_a")
        TrackPidAndTechniqueBM("BM", "T1546.015", "comp_obj_model")
      end
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

