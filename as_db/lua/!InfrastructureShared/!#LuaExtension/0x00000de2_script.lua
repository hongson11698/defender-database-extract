-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaExtension\0x00000de2_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 ~= nil and #l_0_0 > 10 and l_0_1 ~= nil and #l_0_1 > 4 then
  local l_0_2 = (string.sub)(l_0_1, -3)
  local l_0_3 = {}
  l_0_3.ocx = true
  l_0_3.cpl = true
  l_0_3.tmp = true
  if l_0_3[l_0_2] == true then
    local l_0_4 = "LUA:Ext_" .. l_0_2
    ;
    (mp.set_mpattribute)(l_0_4)
    return mp.CLEAN
  end
end
do
  return mp.CLEAN
end

