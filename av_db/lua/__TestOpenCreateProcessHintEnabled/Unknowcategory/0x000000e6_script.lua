-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\__TestOpenCreateProcessHintEnabled\Unknowcategory\0x000000e6_luac 

-- params : ...
-- function num : 0
if (mp.getfilename)(mp.FILEPATH_QUERY_FULL) == "/tmp/2813dbf5-607f-409d-85a7-3b172cb14f19" and (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == 2 and (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) == true then
  return mp.INFECTED
end
return mp.CLEAN

