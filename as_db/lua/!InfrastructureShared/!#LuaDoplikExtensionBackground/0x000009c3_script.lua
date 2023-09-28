-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaDoplikExtensionBackground\0x000009c3_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or #l_0_0 <= 1 then
  return mp.CLEAN
end
if l_0_1 == nil then
  return mp.CLEAN
end
if l_0_1 == "background.js" and (string.find)(l_0_0, "appdata\\\\local\\\\", 1, true) and (string.find)(l_0_0, "chrome_", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

