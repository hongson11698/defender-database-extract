-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFLuaSuspiciousFileNamePeExA\0x00000540_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 ~= nil and l_0_0:len() > 10 and l_0_1 ~= nil and l_0_1:len() > 31 then
  local l_0_2 = (string.sub)(l_0_1, -5)
  if not l_0_2:find(".", 1, true) then
    return mp.CLEAN
  end
  local l_0_3 = l_0_1:match("^[0-9a-f]+")
  if l_0_3 == nil then
    return mp.CLEAN
  end
  local l_0_4 = l_0_3:len()
  if l_0_4 < 31 or l_0_4 < l_0_1:len() - 5 then
    return mp.CLEAN
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

