-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b69_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 4000 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1:find(".bin", 1, true) or l_0_1:find("\\payload", 1, true) or l_0_1:find("\\loader", 1, true) or l_0_1:find("\\sbx", 1, true) or l_0_1:find("\\sbe", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

