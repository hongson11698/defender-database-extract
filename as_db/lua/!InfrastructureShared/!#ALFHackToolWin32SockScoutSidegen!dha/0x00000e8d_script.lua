-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFHackToolWin32SockScoutSidegen!dha\0x00000e8d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 ~= "config.txt" then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilesize)()
if l_0_1 > 1024 then
  return mp.CLEAN
end
local l_0_2 = (mp.enum_mpattributesubstring)("SCPT:SockScoutSide")
if #l_0_2 >= 3 then
  (mp.set_mpattribute)("MpNonPIIFileType")
  return mp.INFECTED
end
return mp.CLEAN

