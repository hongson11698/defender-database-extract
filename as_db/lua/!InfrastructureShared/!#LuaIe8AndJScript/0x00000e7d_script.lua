-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaIe8AndJScript\0x00000e7d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 400 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1:find("fuzz", 1, true) or l_0_1:find("exploitdb", 1, true) or l_0_1:find("helloworld", 1, true) or l_0_1:find("grizzly\\serve", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

