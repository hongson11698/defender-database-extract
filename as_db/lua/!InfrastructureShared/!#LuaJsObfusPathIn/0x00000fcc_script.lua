-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaJsObfusPathIn\0x00000fcc_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0 then
  l_0_0 = (string.lower)(l_0_0)
  if l_0_0:match("%->.+/") or l_0_0:match("%->.+\\") or l_0_0:match("%->.+%->") then
    return mp.CLEAN
  end
  local l_0_1 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
  if not l_0_1 then
    return mp.CLEAN
  end
  if IsInternetCache(l_0_1) == true then
    return mp.CLEAN
  end
  if l_0_1:find("\\appdata\\local\\temp", 1, true) then
    local l_0_2 = (string.match)(l_0_1, "\\appdata\\local\\temp\\(.+)")
    if l_0_2 and l_0_2:find("\\", 1, true) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

