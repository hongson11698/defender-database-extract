-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanWin32ObfJsDownloade\0x0000053b_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
    local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
    if l_0_0 and (MpCommon.QueryPersistContext)(l_0_0, "isErik") then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

