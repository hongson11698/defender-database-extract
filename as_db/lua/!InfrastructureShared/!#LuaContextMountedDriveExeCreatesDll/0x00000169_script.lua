-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextMountedDriveExeCreatesDll\0x00000169_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
if l_0_0 == "" or l_0_0 == "" then
  return mp.CLEAN
end
if l_0_0:find("^\\device\\cdrom") ~= nil then
  local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
  if l_0_1 == nil or (string.len)(l_0_1) < 4 then
    return mp.CLEAN
  end
  local l_0_2 = (MpCommon.PathToWin32Path)(l_0_1)
  if l_0_2 == nil then
    return mp.CLEAN
  end
  local l_0_3 = "MountedDriveExeCreatesDll"
  local l_0_4 = (MpCommon.QueryPersistContext)(l_0_2, l_0_3)
  if not l_0_4 then
    (MpCommon.AppendPersistContext)(l_0_2, l_0_3, 100)
  end
  ;
  (mp.set_mpattribute)("MpDisableCaching")
  return mp.INFECTED
end
do
  return mp.CLEAN
end

