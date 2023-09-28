-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextDllDroppedByPowerShell\0x00000f5f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_0 == nil then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
if l_0_0 == "powershell.exe" then
  local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
  local l_0_2 = "DllDroppedByPowerShell"
  local l_0_3 = (MpCommon.QueryPersistContext)(l_0_1, l_0_2)
  if not l_0_3 then
    (MpCommon.AppendPersistContext)(l_0_1, l_0_2, 100)
  end
  ;
  (mp.set_mpattribute)("MpDisableCaching")
  return mp.INFECTED
end
do
  return mp.CLEAN
end

