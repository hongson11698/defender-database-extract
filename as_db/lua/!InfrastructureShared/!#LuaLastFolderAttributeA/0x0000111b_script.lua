-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaLastFolderAttributeA\0x0000111b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or #l_0_0 <= 1 then
  return mp.CLEAN
end
l_0_0 = normalize_path(l_0_0)
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1, l_0_2 = (string.gsub)(l_0_0, "\\", "")
if l_0_2 == nil or l_0_2 >= 12 then
  return mp.CLEAN
end
local l_0_3 = "Lua:LastFolder"
local l_0_4 = (string.format)("%sCount!%s", l_0_3, tostring(l_0_2))
if l_0_2 == 0 and #l_0_0 == 2 and (string.sub)(l_0_0, -1) == ":" then
  (mp.set_mpattribute)(l_0_3 .. "0!" .. l_0_0)
  ;
  (mp.set_mpattribute)(l_0_4)
  return mp.CLEAN
end
l_0_0 = l_0_0:gsub("%s", "/x20")
local l_0_5 = (string.gmatch)(l_0_0, "[^\\]+")
local l_0_6 = false
for l_0_10 in l_0_5 do
  if l_0_2 >= 0 and l_0_2 <= 5 and #l_0_10 >= 1 then
    local l_0_11 = (string.format)("%s%s!", l_0_3, tostring(l_0_2))
    if l_0_11 ~= nil then
      l_0_6 = true
      local l_0_12 = l_0_11 .. l_0_10
      if #l_0_12 <= 63 then
        (mp.set_mpattribute)(l_0_12)
      else
        ;
        (mp.set_mpattribute)(l_0_12:sub(1, 63))
        ;
        (mp.set_mpattribute)(l_0_11 .. ":longfolder")
      end
    end
  end
  do
    do
      l_0_2 = l_0_2 - 1
      if l_0_2 < 0 then
        break
      end
      -- DECOMPILER ERROR at PC135: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end
if l_0_6 == true then
  (mp.set_mpattribute)(l_0_4)
end
return mp.CLEAN

