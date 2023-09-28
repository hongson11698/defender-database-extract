-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_AArulD\ObMpAttributes\0x000000da_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == "google_update_checker.js" then
  return mp.INFECTED
end
if l_0_0 == "local_update_checker.js" then
  return mp.INFECTED
end
return mp.CLEAN

