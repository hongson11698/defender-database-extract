-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaSuspiciousHtmlFilename\0x000082c5_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2 = nil
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
end
if l_0_2 == nil then
  if (string.lower)((mp.getfilename)()) == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC33: Confused about usage of register: R1 in 'UnsetPending'

  l_0_2 = ((string.lower)((mp.getfilename)())):match("([^\\]+)$")
end
if l_0_2 ~= nil and (l_0_2 == "outlook.html" or l_0_2 == "outlook.htm" or l_0_2 == "statement.html" or l_0_2 == "statement.htm" or l_0_2 == "irregularactivityfile.html" or l_0_2 == "irregularactivityfile.htm" or l_0_2 == "assistenza_clienti.html" or l_0_2 == "assistenza_clienti.htm" or l_0_2 == "your account balance.html" or l_0_2 == "Your Account Balance.htm" or l_0_2 == "new order.html" or l_0_2 == "new order.htm" or l_0_2 == "p.o.html" or l_0_2 == "p.o.htm" or l_0_2 == "price_list.html" or l_0_2 == "price_list.htm" or l_0_2 == "quotation.html" or l_0_2 == "quotation.htm" or (string.match)(l_0_2, "^new po # .%d+") or (string.match)(l_0_2, "^bank.document") or (string.match)(l_0_2, "^bank.copy#%d+") or (string.match)(l_0_2, "^purchaseorder") or (string.match)(l_0_2, "^purchase.order") or (string.match)(l_0_2, "^form.id") or (string.match)(l_0_2, "^barclays") or (string.match)(l_0_2, "^paypal") or (string.match)(l_0_2, "^restore_access") or (string.match)(l_0_2, "^apple.online") or (string.match)(l_0_2, "^form%d+") or (string.match)(l_0_2, "^document%d+") or (string.match)(l_0_2, "^attachment%d+") or (string.match)(l_0_2, "^secure.account") or (string.match)(l_0_2, "^refund.form") or (string.match)(l_0_2, "^pp%-%d+%-%d+%-") or (string.match)(l_0_2, "^pp.form") or (string.match)(l_0_2, "^tax.refund") or (string.match)(l_0_2, "^purchase.order") or (string.match)(l_0_2, "^case.id.number") or (string.match)(l_0_2, "^account.information") or (string.match)(l_0_2, "^postepay") or (string.match)(l_0_2, "^modulo.cliente") or (string.match)(l_0_2, "^payment.slip") or (string.match)(l_0_2, "^suspension.alert") or (string.match)(l_0_2, "^card.details") or (string.match)(l_0_2, "^hotmail") or (string.match)(l_0_2, "^po#%d+") or (string.match)(l_0_2, "^trail.PO.#") or (string.match)(l_0_2, "^scan.invoice") or (string.match)(l_0_2, "^stamped.po") or (string.match)(l_0_2, "^invoice") or (string.match)(l_0_2, "^po.%d+") or (string.match)(l_0_2, "^verification.form") or (string.match)(l_0_2, "^urgent") or (string.match)(l_0_2, "^amex") or (string.match)(l_0_2, "^scan.%d+") or (string.match)(l_0_2, "^excel%d+") or (string.match)(l_0_2, "^new.order") or (string.match)(l_0_2, "banking.update.form%.htm") or (string.match)(l_0_2, "banking.details") or (string.match)(l_0_2, "amex.message") or (string.match)(l_0_2, "limited.+access") or (string.find)(l_0_2, ".pdf.htm", 1, true) ~= nil or (string.find)(l_0_2, ".xls.htm", 1, true) ~= nil or (string.find)(l_0_2, ".xlsx.htm", 1, true) ~= nil or (string.find)(l_0_2, ".doc.htm", 1, true) ~= nil or (string.find)(l_0_2, ".docx.htm", 1, true) ~= nil or (string.find)(l_0_2, "paypal.htm", 1, true) ~= nil or (string.find)(l_0_2, "verification.htm", 1, true) ~= nil or (string.find)(l_0_2, "online.htm", 1, true) ~= nil or (string.find)(l_0_2, "securizza.htm", 1, true) ~= nil or (string.find)(l_0_2, "online banking", 1, true) ~= nil or (string.find)(l_0_2, "security.htm", 1, true) ~= nil or (string.find)(l_0_2, "tax refund", 1, true) ~= nil or (string.find)(l_0_2, "suspension.htm", 1, true) ~= nil or (string.find)(l_0_2, "refund.htm", 1, true) ~= nil or (string.find)(l_0_2, "refund form.htm", 1, true) ~= nil or (string.find)(l_0_2, "onlinebanking.htm", 1, true) ~= nil or (string.find)(l_0_2, "update form.htm", 1, true) ~= nil or (string.find)(l_0_2, "usd slip.htm", 1, true) ~= nil or (string.find)(l_0_2, "urgent order", 1, true) ~= nil or (string.find)(l_0_2, "verify.htm", 1, true) ~= nil or (string.find)(l_0_2, "secured.htm", 1, true) ~= nil) then
  return mp.INFECTED
end
return mp.CLEAN

