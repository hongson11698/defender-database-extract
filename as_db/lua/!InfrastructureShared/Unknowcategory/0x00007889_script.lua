-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007889_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 4000000 or l_0_0 < 10000 then
  return mp.CLEAN
end
local l_0_1 = ((MpCommon.ExpandEnvironmentVariables)("%windir%")):lower()
if (((MpCommon.PathToWin32Path)((mp.getfilename)(mp.FILEPATH_QUERY_FULL))):lower()):sub(1, #l_0_1) == l_0_1 then
  return mp.CLEAN
end
return mp.INFECTED

