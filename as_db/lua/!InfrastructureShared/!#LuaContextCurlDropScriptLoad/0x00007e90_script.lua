-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextCurlDropScriptLoad\0x00007e90_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_0 then
  l_0_0 = l_0_0:lower()
end
local l_0_1 = "ScriptDroppedByCurl"
if l_0_0 == "wscript.exe" then
  local l_0_2 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
  if (MpCommon.QueryPersistContext)(l_0_2, l_0_1) then
    (mp.set_mpattribute)("Lua:Context/CurlDropWscriptLoad")
  end
else
  do
    do
      if l_0_0 == "cscript.exe" then
        local l_0_3 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
        if (MpCommon.QueryPersistContext)(l_0_3, l_0_1) then
          (mp.set_mpattribute)("Lua:Context/CurlDropCscriptLoad")
        end
      end
      return mp.CLEAN
    end
  end
end

