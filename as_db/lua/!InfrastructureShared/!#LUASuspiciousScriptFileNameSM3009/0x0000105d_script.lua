-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUASuspiciousScriptFileNameSM3009\0x0000105d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "calculation%#%d%d%d%d.iso") ~= nil or (string.find)(l_0_0, "ref%#%d%d%d%d.iso") ~= nil or (string.find)(l_0_0, "gallery%#%d%d%d%d.iso") ~= nil or (string.find)(l_0_0, "accounting%#%d%d%d%d.iso") ~= nil or (string.find)(l_0_0, "card%#%d%d%d%d.iso") ~= nil or (string.find)(l_0_0, "contract%#%d%d%d%d.iso") ~= nil or (string.find)(l_0_0, "rfsl%#%d%d%d%d.iso") ~= nil or (string.find)(l_0_0, "rej%_%d%d%d%d.iso") ~= nil or (string.find)(l_0_0, "invoice_10%-12_document_%d%d%d%d.iso") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

