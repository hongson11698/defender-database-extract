-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFUnquotedPathAbuseB\0x00000d3a_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("Lua:LastFolder0!c:") then
  return mp.CLEAN
end
if (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) == "program.exe" then
  return mp.INFECTED
end
return mp.CLEAN

