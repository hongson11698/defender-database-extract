-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanWin32ChocoFragB!dha\0x0000107a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 8000000 then
  return mp.CLEAN
end
if l_0_0 < 204800 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1:find("\\windows\\system32\\sys.dat", 1, true) or l_0_1:find("\\windows\\system32\\richlog.dat", 1, true) or l_0_1:find("\\windows\\system32\\flash.dat", 1, true) or l_0_1:find("\\windows\\system32\\main.dat", 1, true) or l_0_1:find("\\windows\\system32\\actionlist.xml", 1, true) or l_0_1:find("\\windows\\system32\\wbem\\microsoft.net.props", 1, true) then
  (mp.set_mpattribute)("MpNonPIIFileType")
  return mp.INFECTED
end
return mp.CLEAN

