-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\97782d58d\0x00006274_luac 

-- params : ...
-- function num : 0
if peattributes.ismsil and (mp.get_mpattribute)("LUA:FileSizeLE5000.A") and (mp.get_mpattribute)("pea_no_security") then
  return mp.INFECTED
end
return mp.CLEAN

