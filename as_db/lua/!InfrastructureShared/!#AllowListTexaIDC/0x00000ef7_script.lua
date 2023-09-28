-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#AllowListTexaIDC\0x00000ef7_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil then
  return mp.CLEAN
end
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = l_0_1:sub(-4)
if (string.find)(l_0_0, "\\texa\\idc5\\car\\data\\swupdate\\temp\\updates\\download\\", 1, true) ~= nil then
  return mp.CLEAN
end
if l_0_2 == ".tpk" then
  return mp.INFECTED
end
if l_0_2 == ".rar" then
  return mp.INFECTED
end
return mp.CLEAN

