-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPolyglotS1\0x00000efd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 4096 or l_0_0 > 5242880 then
  return mp.CLEAN
end
local l_0_1 = (mp.readheader)(0, 256)
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
if (string.find)(l_0_1, ".pdf", 1, true) ~= nil or (string.find)(l_0_1, ".doc", 1, true) ~= nil or (string.find)(l_0_1, ".xls", 1, true) ~= nil or (string.find)(l_0_1, ".htm", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

