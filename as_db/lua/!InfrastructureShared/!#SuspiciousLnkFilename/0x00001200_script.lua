-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SuspiciousLnkFilename\0x00001200_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "nf%-e2017%d+%.lnk") ~= nil or (string.find)(l_0_0, "pdf%.lnk") ~= nil or (string.find)(l_0_0, "boleto", 1, true) ~= nil or (string.find)(l_0_0, "payment", 1, true) ~= nil or (string.find)(l_0_0, "invoice", 1, true) ~= nil or (string.find)(l_0_0, "fatura", 1, true) ~= nil or (string.find)(l_0_0, "resultado_consulta", 1, true) ~= nil or (string.find)(l_0_0, "purchase..?order") ~= nil or (string.find)(l_0_0, "produto..?devolvido") ~= nil or (string.find)(l_0_0, "rechnung", 1, true) ~= nil or (string.find)(l_0_0, "documentos", 1, true) ~= nil or (string.find)(l_0_0, "documento", 1, true) ~= nil or (string.find)(l_0_0, "recibo", 1, true) ~= nil or (string.find)(l_0_0, "bole_pdf", 1, true) ~= nil or (string.find)(l_0_0, "notafiscal", 1, true) ~= nil or (string.find)(l_0_0, "arquivo-danf", 1, true) ~= nil or (string.find)(l_0_0, "nf-danfe", 1, true) ~= nil or (string.find)(l_0_0, "nf-e", 1, true) ~= nil or (string.find)(l_0_0, "historico_conversas", 1, true) ~= nil or (string.find)(l_0_0, "nfe_?%d+%.lnk") ~= nil or (string.find)(l_0_0, "curriculo%.lnk") ~= nil or (string.find)(l_0_0, "undelivered-parcel", 1, true) or (string.find)(l_0_0, "delivery-receipt", 1, true) or (string.find)(l_0_0, "documento", 1, true) or (string.find)(l_0_0, "payment", 1, true) or (string.find)(l_0_0, "comprovante", 1, true) or (string.find)(l_0_0, ".doc.lnk", 1, true) or (string.find)(l_0_0, ".pdf.lnk", 1, true) or (string.find)(l_0_0, ".jpg.lnk", 1, true) or (string.find)(l_0_0, ".html.lnk", 1, true) or (string.find)(l_0_0, "delivery-details", 1, true) or (string.find)(l_0_0, "ground-label", 1, true) or (string.find)(l_0_0, "anexon", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

