-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d52_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if (l_0_1 == "isafetray.exe" or l_0_1 == "isafesvc.exe") and l_0_0 ~= nil and l_0_0:find("\\elex-tech\\yac", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

