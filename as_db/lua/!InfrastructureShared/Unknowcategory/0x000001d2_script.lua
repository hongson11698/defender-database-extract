-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000001d2_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
do
  if l_0_0:sub(2, 9) ~= "window" and l_0_0:sub(2, 9) ~= "progra" then
    local l_0_2 = "Evaluation:" .. l_0_0
    ;
    (MpCommon.AppendPersistContextNoPath)(l_0_2, l_0_1, 6000)
  end
  return mp.CLEAN
end

