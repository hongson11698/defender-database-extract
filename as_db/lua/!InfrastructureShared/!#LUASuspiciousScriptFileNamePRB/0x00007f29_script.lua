-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUASuspiciousScriptFileNamePRB\0x00007f29_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "po_00181021usd %a+%.%a+%.%a+%.%a%a+ pdfxls%.html") ~= nil or (string.find)(l_0_0, "swift copy usd %a+@%a+%-%a+%.%a+%.%a%a+ pdf_xls%.html") ~= nil or (string.find)(l_0_0, "purchase order usd %a+%.%a+@%a+%.%a%a+ pdf_xls%.html") ~= nil or (string.find)(l_0_0, "transfer copy usd %a+%.%a+@%a+%.%a%a+ pdf_xls%.html") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

