-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUASuspiciousPDFFileNameS\0x00000e35_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "paid_offer_%d%d+_jan%-19.pdf") ~= nil or (string.find)(l_0_0, "redacted.document.01.20.pdf", 1, true) ~= nil or (string.find)(l_0_0, "inv_unpaid_%d%d+_april.pdf") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

