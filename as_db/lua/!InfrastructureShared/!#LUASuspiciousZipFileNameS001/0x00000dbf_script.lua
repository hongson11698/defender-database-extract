-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUASuspiciousZipFileNameS001\0x00000dbf_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 4096 and l_0_0 > 15728640 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_1 == nil or (string.len)(l_0_1) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_1, "attachmentfiles_20220208_%d%d%d%d+%.zip") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

