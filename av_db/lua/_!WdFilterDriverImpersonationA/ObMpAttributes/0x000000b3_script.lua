-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!WdFilterDriverImpersonationA\ObMpAttributes\0x000000b3_luac 

-- params : ...
-- function num : 0
if (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) == "wdfilter.sys" then
  return mp.INFECTED
end
return mp.CLEAN

