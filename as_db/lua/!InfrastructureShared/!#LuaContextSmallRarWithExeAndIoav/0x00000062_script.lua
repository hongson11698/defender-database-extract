-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextSmallRarWithExeAndIoav\0x00000062_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.IOAVGetDownloadUrl)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilesize)()
if l_0_1 > 20971520 then
  return mp.CLEAN
end
local l_0_2 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
local l_0_3 = "Lua:Context/SmallRarWithExeAndIoav"
;
(mp.set_mpattribute)("Lua:Context/SmallRarWithExeAndIoav")
local l_0_4 = (MpCommon.QueryPersistContext)(l_0_2, l_0_3)
if not l_0_4 then
  (MpCommon.AppendPersistContext)(l_0_2, l_0_3, 300)
end
;
(mp.set_mpattribute)("MpDisableCaching")
return mp.INFECTED

