-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUASuspiciousScriptFileNamePRBA\0x00007dde_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "complaintcopy_%d%d%d%d%d%(feb01%)1%.one") ~= nil or (string.find)(l_0_0, " on 01feb %- copy%.one") ~= nil or (string.find)(l_0_0, "agreementcancelation_%d%d%d%d%d%d%(feb08%)%.one") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

