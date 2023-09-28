-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9cb352d5a6b2\0x00000932_luac 

-- params : ...
-- function num : 0
local l_0_0 = tonumber((this_sigattrlog[4]).utf8p1)
if l_0_0 == nil or l_0_0 < 315392 then
  return mp.CLEAN
end
if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
local l_0_1, l_0_2 = (bm.get_process_relationships)()
if l_0_1 ~= nil then
  for l_0_6,l_0_7 in ipairs(l_0_1) do
    if l_0_7.image_path ~= nil then
      local l_0_8 = (string.lower)((MpCommon.PathToWin32Path)(l_0_7.image_path))
      if (string.find)(l_0_8, "gravostyle", 1, true) or (string.find)(l_0_8, "typeedit", 1, true) or (string.find)(l_0_8, "lasertype", 1, true) then
        return mp.CLEAN
      end
      if (sysio.IsFileExists)(l_0_8) and not (mp.IsKnownFriendlyFile)(l_0_8, true, false) then
        (bm.add_related_file)(l_0_8)
      end
    end
  end
end
do
  local l_0_9 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
  if (sysio.IsFileExists)(l_0_9) and not (mp.IsKnownFriendlyFile)(l_0_9, true, false) then
    (bm.add_related_file)(l_0_9)
  end
  return mp.INFECTED
end

