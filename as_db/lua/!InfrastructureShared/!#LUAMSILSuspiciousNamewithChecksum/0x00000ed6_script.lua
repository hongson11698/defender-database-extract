-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAMSILSuspiciousNamewithChecksum\0x00000ed6_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (mp.getfilesize)() < 393216 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "check#%d%d%d%d%d+%.exe$") ~= nil or (string.find)(l_0_0, "evoucher%.exe$") ~= nil or (string.find)(l_0_0, "paid_invoice%.exe$") ~= nil or (string.find)(l_0_0, "itvpn%.exe$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

