-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaJSKoadicA!iecache\0x00000de4_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if (string.find)(l_0_0, "\\windows\\inetcache\\ie\\", 1, true) or (string.find)(l_0_0, "\\content.ie5\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

