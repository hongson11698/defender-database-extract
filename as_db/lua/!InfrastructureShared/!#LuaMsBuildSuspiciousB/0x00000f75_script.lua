-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaMsBuildSuspiciousB\0x00000f75_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if not (string.find)(l_0_0, "\\temp\\", 1, true) then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_1 ~= "msbuild.exe" and l_0_1 ~= "installutil.exe" then
  return mp.CLEAN
end
return mp.INFECTED

