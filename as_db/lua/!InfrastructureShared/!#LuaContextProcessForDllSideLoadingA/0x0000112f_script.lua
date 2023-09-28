-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextProcessForDllSideLoadingA\0x0000112f_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
  local l_0_0 = {}
  l_0_0.BM_Process_Hacker_EXE = ""
  local l_0_1, l_0_2 = nil, nil
  for l_0_6,l_0_7 in pairs(l_0_0) do
    if (mp.get_mpattribute)(l_0_6) then
      l_0_1 = l_0_6
      l_0_2 = (string.lower)(l_0_7)
      break
    end
  end
  do
    if l_0_1 == nil or l_0_2 == nil then
      return mp.CLEAN
    end
    local l_0_8 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
    if l_0_8 == nil then
      return mp.CLEAN
    end
    if #l_0_2 > 0 and l_0_2 == l_0_8 then
      return mp.CLEAN
    end
    local l_0_9 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
    if l_0_9:sub(1, 8) == "\\device\\" then
      l_0_9 = (MpCommon.PathToWin32Path)(l_0_9)
      if l_0_9 == nil then
        return mp.CLEAN
      end
      l_0_9 = (string.lower)(l_0_9)
    end
    if l_0_9:sub(1, 4) == "\\\\?\\" then
      l_0_9 = l_0_9:sub(5)
    end
    local l_0_10 = l_0_9 .. "\\" .. l_0_8
    local l_0_11 = "CheckPossibleDllSideLoadingA"
    do
      local l_0_12 = (MpCommon.QueryPersistContext)(l_0_10, l_0_11)
      if not l_0_12 then
        (MpCommon.AppendPersistContext)(l_0_10, l_0_11, 100)
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

