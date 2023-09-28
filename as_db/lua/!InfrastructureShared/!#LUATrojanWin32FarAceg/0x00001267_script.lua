-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUATrojanWin32FarAceg\0x00001267_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 512 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 9) ~= 1162035498 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 13) ~= 336865834 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 33) ~= 1163021909 then
  return mp.CLEAN
end
local l_0_1 = (mp.readu_u16)(headerpage, 87)
if l_0_1 > 100 then
  return mp.CLEAN
end
local l_0_2 = nil
;
(mp.readprotection)(false)
l_0_2 = (string.lower)((mp.readfile)(88, l_0_1))
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = function(l_1_0, l_1_1)
  -- function num : 0_0
  do return l_1_0:sub(-l_1_1:len()) == l_1_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

local l_0_4 = function(l_2_0, l_2_1)
  -- function num : 0_1
  do return l_2_0:sub(1, l_2_1:len()) == l_2_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

if l_0_3(l_0_2, ".exe") and (l_0_3(l_0_2, "pdf.exe") or l_0_3(l_0_2, "doc.exe") or l_0_3(l_0_2, "xls.exe") or l_0_3(l_0_2, "xlsx.exe") or l_0_3(l_0_2, "jpg.exe") or l_0_3(l_0_2, "docx.exe") or l_0_4(l_0_2, "tnt ") or l_0_4(l_0_2, "dhl ") or l_0_4(l_0_2, "po") or l_0_4(l_0_2, "rfq") or (l_0_2.find)("payment", 1, true) or l_0_2:find("shipment", 1, true) or l_0_2:find("invoice", 1, true) or l_0_2:find("swift", 1, true) or l_0_2:find("deliver", 1, true) or l_0_2:find("statement", 1, true) or l_0_2:find("order", 1, true) or l_0_2:find("confirmation", 1, true) or l_0_2:find("urgent", 1, true) or l_0_2:find("bank ", 1, true) or l_0_2:find("bank_", 1, true) or l_0_2:find("siparis", 1, true) or l_0_2:find("pedido", 1, true) or l_0_2:find("purchase", 1, true) or l_0_2:find("fatura", 1, true) or l_0_2:find("factura", 1, true) or l_0_2:find("boleto", 1, true) or l_0_2:find("inquiry", 1, true) or l_0_2:find("tracking", 1, true) or l_0_2:find("quotation", 1, true) or l_0_2:find("rfq ", 1, true) or l_0_2:find("arquivo_fiscal", 1, true) or l_0_2:find("invoice", 1, true) or l_0_2:find("declaration", 1, true) or l_0_2:find("advice", 1, true)) then
  return mp.INFECTED
end
if l_0_3(l_0_2, ".scr") and (l_0_3(l_0_2, "pdf.scr") or l_0_3(l_0_2, "doc.scr") or l_0_3(l_0_2, "xls.scr") or l_0_3(l_0_2, "xlsx.scr") or l_0_3(l_0_2, "jpg.scr") or l_0_3(l_0_2, "docx.scr") or l_0_4(l_0_2, "tnt ") or l_0_4(l_0_2, "dhl ") or l_0_4(l_0_2, "po") or l_0_4(l_0_2, "rfq") or l_0_2:find("payment", 1, true) or l_0_2:find("shipment", 1, true) or l_0_2:find("invoice", 1, true) or l_0_2:find("swift", 1, true) or l_0_2:find("deliver", 1, true) or l_0_2:find("statement", 1, true) or l_0_2:find("order", 1, true) or l_0_2:find("confirmation", 1, true) or l_0_2:find("urgent", 1, true) or l_0_2:find("bank ", 1, true) or l_0_2:find("bank_", 1, true) or l_0_2:find("siparis", 1, true) or l_0_2:find("pedido", 1, true) or l_0_2:find("purchase", 1, true) or l_0_2:find("fatura", 1, true) or l_0_2:find("factura", 1, true) or l_0_2:find("boleto", 1, true) or l_0_2:find("inquiry", 1, true) or l_0_2:find("tracking", 1, true) or l_0_2:find("quotation", 1, true) or l_0_2:find("rfq ", 1, true) or l_0_2:find("arquivo_fiscal", 1, true) or l_0_2:find("invoice", 1, true) or l_0_2:find("declaration", 1, true) or l_0_2:find("advice", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN

