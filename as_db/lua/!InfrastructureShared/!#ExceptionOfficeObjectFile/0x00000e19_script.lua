-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ExceptionOfficeObjectFile\0x00000e19_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if (string.find)(l_0_0, "argus.pptx->ppt/embeddings/oleobject", 1, true) ~= nil or (string.find)(l_0_0, "conductor - sizing, single phase.pptx->ppt/embeddings/oleobject", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

