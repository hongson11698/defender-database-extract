-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUASuspiciousScriptFileNameSMQB\0x00001234_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "scanneddocuments_%d%d%d%d+.html") ~= nil or (string.find)(l_0_0, "scanneddocs_%d%d%d%d+.html") ~= nil or (string.find)(l_0_0, "commercial doc for inv# rgl/085/2022.shtml") ~= nil or (string.find)(l_0_0, "documentos%#092820220000.shtml") ~= nil or (string.find)(l_0_0, "maersk line shipment .shtm", 1, true) ~= nil or (string.find)(l_0_0, "draft hbl + packing list.shtml", 1, true) ~= nil or (string.find)(l_0_0, "invoice-38973.shtml", 1, true) ~= nil or (string.find)(l_0_0, "invoice-38937.shtml", 1, true) ~= nil or (string.find)(l_0_0, "facsimile_received_+1[[random_digits(6)]]", 1, true) ~= nil or (string.find)(l_0_0, "terms & conditions_technical specifications_pdf.html", 1, true) ~= nil or (string.find)(l_0_0, "swift copy_1612023.zip", 1, true) ~= nil or (string.find)(l_0_0, "lineonefacs%d%d%d%d+file.html") ~= nil or (string.find)(l_0_0, "po order.pdf.shtml", 1, true) ~= nil or (string.find)(l_0_0, "invoice inv-6830.htm", 1, true) ~= nil or (string.find)(l_0_0, "inquiry po.slx.shtml", 1, true) ~= nil or (string.find)(l_0_0, "payment_advice_2612023.zip", 1, true) ~= nil or (string.find)(l_0_0, "vmail_1513456-4784_01_23_2023.html", 1, true) ~= nil or (string.find)(l_0_0, "po_300000002140033_adco119189_0.pdf.shtml", 1, true) ~= nil or (string.find)(l_0_0, "eft_1807_1262023.htm", 1, true) ~= nil or (string.find)(l_0_0, "invoice1923119-6.html", 1, true) ~= nil or (string.find)(l_0_0, "ct19702321050-20230220204952905-179-7.html", 1, true) ~= nil or (string.find)(l_0_0, "abschlagsrechnung gkk kiel hasselfelde 40 (pegasus-demolition).img", 1, true) ~= nil or (string.find)(l_0_0, "awb#68337.shtml", 1, true) ~= nil or (string.find)(l_0_0, "quotation mt5011124 (po2851/2042).shtml", 1, true) ~= nil or (string.find)(l_0_0, "purchase order [po#6910000309].shtml", 1, true) ~= nil or (string.find)(l_0_0, "_employee_benefits_0705vxtsndugfbuyaz5b6sad6.htm", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

