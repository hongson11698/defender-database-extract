-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000dc6_luac 

-- params : ...
-- function num : 0
if peattributes.isdll then
  return mp.CLEAN
end
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if (string.sub)(l_0_1, 1, 6) == "dmgr1." and l_0_0:find("\\temp\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

