-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaOpenAfterDropBySystem\0x000001b4_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN then
    local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
    if l_0_0 == nil then
      return mp.CLEAN
    end
    if l_0_0:sub(1, 8) == "\\device\\" then
      l_0_0 = (MpCommon.PathToWin32Path)(l_0_0)
    end
    if l_0_0 == nil then
      return mp.CLEAN
    end
    l_0_0 = (string.lower)(l_0_0)
    if (MpCommon.QueryPersistContext)(l_0_0, "SuspExeFileDroppedBySystemProcess") then
      return mp.INFECTED
    end
    if (MpCommon.QueryPersistContext)(l_0_0, "SuspFileDroppedBySystemProcess") then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

