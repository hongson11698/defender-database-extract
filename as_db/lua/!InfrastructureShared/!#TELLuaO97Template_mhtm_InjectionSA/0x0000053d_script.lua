-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELLuaO97Template_mhtm_InjectionSA\0x0000053d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 > 1536000 then
  return mp.CLEAN
end
if l_0_1:find("->word/_rels/", 1, true) or l_0_1:find("/drawings/_rels/", 1, true) or l_0_1:find("/worksheets/_rels/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

