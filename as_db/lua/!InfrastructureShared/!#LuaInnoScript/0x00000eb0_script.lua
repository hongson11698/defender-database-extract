-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaInnoScript\0x00000eb0_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 800000 then
  return mp.CLEAN
end
local l_0_1 = nil
l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_LOWERCASE, mp.FILEPATH_QUERY_FNAME))
if l_0_1 ~= nil and (string.sub)(l_0_1, -17) == "->(innosetupdata)" then
  (mp.readprotection)(false)
  if (mp.readu_u32)((mp.readfile)(0, 4), 1) < 256 then
    return mp.INFECTED
  end
end
return mp.CLEAN

