-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUASuspiciousFileNameSM0510\0x00000e79_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (mp.get_mpattribute)("LUA:FileSizeGT80000.A") and ((string.find)(l_0_0, "invoice%_pdf%#%d%d%d%d.iso") ~= nil or (string.find)(l_0_0, "invoice%_%d%d%d%d%_october%_pdf.iso") ~= nil) then
  return mp.INFECTED
end
return mp.CLEAN

