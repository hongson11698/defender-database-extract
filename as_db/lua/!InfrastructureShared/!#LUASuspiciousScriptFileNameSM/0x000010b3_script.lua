-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUASuspiciousScriptFileNameSM\0x000010b3_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "remittance %d%d%d%d+%.pdf%.html") ~= nil or (string.find)(l_0_0, "invoice rnp583879248d11%.html") ~= nil or (string.find)(l_0_0, "payment swift receipt 250i2109151256175684%#%.shtml") ~= nil or (string.find)(l_0_0, "retrieve%-message%-immediately%.%-%_%d%d%d%d+%.html") ~= nil or (string.find)(l_0_0, "p%.o%- swift mt%_109 5m forinv%.%-%_%d%d%d%d+%.html") ~= nil or (string.find)(l_0_0, "p%.o%- swift mt%_109 5m for inv%.%-%_%d%d%d%d+%.html") ~= nil or (string.find)(l_0_0, "freshoinvoice#f12996554.html") ~= nil or (string.find)(l_0_0, "dcinv_272a.pdf.htm") ~= nil or (string.find)(l_0_0, "att%-50836829.shtml") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

