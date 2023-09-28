-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!ColorexeA\ObMpAttributes\0x000000eb_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if (string.find)(l_0_0, "\\spool\\drivers\\color\\", 1, true) ~= nil and (l_0_0:sub(-4) == ".exe" or l_0_0:sub(-4) == ".dll") then
  return mp.INFECTED
end
return mp.CLEAN

