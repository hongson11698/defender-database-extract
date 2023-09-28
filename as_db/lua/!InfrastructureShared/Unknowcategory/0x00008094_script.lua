-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008094_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if l_0_0 then
  if not (string.find)(l_0_0, "^c:\\") and not (string.find)(l_0_0, "^\\\\") then
    return mp.CLEAN
  end
  if (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "\\windows\\", 1, true) or (string.find)(l_0_0, "\\steam", 1, true) or (string.find)(l_0_0, "robloxplayer", 1, true) or (string.find)(l_0_0, "kartrider", 1, true) or (string.find)(l_0_0, "apex", 1, true) or (string.find)(l_0_0, "\\fivem", 1, true) or (string.find)(l_0_0, "\\yandex", 1, true) or (string.find)(l_0_0, "game", 1, true) then
    return mp.CLEAN
  end
  if not (MpCommon.QueryPersistContext)(l_0_0, "ExecutedPENoCert") then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

