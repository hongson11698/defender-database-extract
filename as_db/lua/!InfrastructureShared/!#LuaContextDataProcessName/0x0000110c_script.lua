-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextDataProcessName\0x0000110c_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if l_0_0 == nil then
    return mp.CLEAN
  end
  ;
  (mp.set_mpattribute)("Lua:NewFileContextDataPresent")
  ;
  (mp.set_mpattribute)("Lua:NewFileContextData:ProcName!" .. l_0_0)
  local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_2 ~= nil then
    (mp.set_mpattribute)("Lua:NewFileContextData:FileName!" .. l_0_2)
  end
  local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
  if l_0_3 ~= nil then
    local l_0_4 = (mp.GetParentProcInfo)(l_0_3)
    if l_0_4 ~= nil and l_0_4.image_path ~= nil then
      local l_0_5 = (string.lower)((string.match)(l_0_4.image_path, "([^\\]+)$"))
      if l_0_5 ~= nil then
        (mp.set_mpattribute)("Lua:NewFileContextData:Parent!" .. l_0_5)
      end
    end
  end
end
do
  return mp.CLEAN
end

