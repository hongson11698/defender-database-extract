-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaHTMLGTE85PercJS\0x00007bbc_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if (string.find)(l_0_0, "%-%>%(script000%d%)", -15) == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.get_parent_filehandle)()
if l_0_1 ~= nil and (mp.get_filesize_by_handle)(l_0_1) * 85 / 100 < (mp.getfilesize)() then
  return mp.INFECTED
end
return mp.CLEAN

