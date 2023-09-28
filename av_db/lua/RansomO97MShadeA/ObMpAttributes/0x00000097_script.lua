-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\RansomO97MShadeA\ObMpAttributes\0x00000097_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1 == "fullcachefile" or l_0_1 == "hotcachefile" then
  return mp.CLEAN
end
if l_0_0:find("\\tanium client\\downloads\\cache", 1, true) ~= nil then
  return mp.CLEAN
end
return mp.INFECTED

