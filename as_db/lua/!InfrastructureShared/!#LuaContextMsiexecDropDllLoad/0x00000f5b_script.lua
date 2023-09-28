-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextMsiexecDropDllLoad\0x00000f5b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_0 == nil then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if (MpCommon.QueryPersistContext)(l_0_1, "DllDroppedByMsiexec") then
  if l_0_0 == "rundll32.exe" then
    (mp.set_mpattribute)("Lua:Context/MsiexecDropRundllLoad")
  else
    if l_0_0 == "regsvr32.exe" then
      (mp.set_mpattribute)("Lua:Context/MsiexecDropRegsvrLoad")
    end
  end
end
return mp.CLEAN

