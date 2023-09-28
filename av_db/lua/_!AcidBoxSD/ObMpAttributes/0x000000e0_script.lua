-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!AcidBoxSD\ObMpAttributes\0x000000e0_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == "msv1_1.dll" or l_0_0 == "pku.dll" or l_0_0 == "windigest.dll" then
  return mp.INFECTED
end
return mp.CLEAN

