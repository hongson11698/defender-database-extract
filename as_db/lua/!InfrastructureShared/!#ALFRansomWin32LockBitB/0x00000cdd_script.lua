-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFRansomWin32LockBitB\0x00000cdd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if (string.find)(l_0_0, "lockbit_.*_%d%d?.%d%d?.%d%d?.zip") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

