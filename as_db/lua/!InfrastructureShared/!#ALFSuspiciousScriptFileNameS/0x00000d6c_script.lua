-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFSuspiciousScriptFileNameS\0x00000d6c_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (mp.getfilesize)() > 1048576 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "new air courier html%.*") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

