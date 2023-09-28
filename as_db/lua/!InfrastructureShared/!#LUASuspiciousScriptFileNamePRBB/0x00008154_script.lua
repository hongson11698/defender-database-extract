-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUASuspiciousScriptFileNamePRBB\0x00008154_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "startapril%(%a%a%d%d%d%d%) %(%d%)%.wsf") ~= nil or (string.find)(l_0_0, "startapril%(%a%a%d%d%d%d%)%.wsf") ~= nil or (string.find)(l_0_0, "startapril%(%a%d%d%d%d%)%.wsf") ~= nil or (string.find)(l_0_0, "aprilclaim%(%a%a%d%d%d%d%)%.wsf") ~= nil or (string.find)(l_0_0, "aprilclaim%(%a%d%d%d%d%)%.wsf") ~= nil or (string.find)(l_0_0, "aprildetails%(%a%a%d%d%d%d%)%.wsf") ~= nil or (string.find)(l_0_0, "aprildetails%(%a%d%d%d%d%)%.wsf") ~= nil or (string.find)(l_0_0, "aprilinv%(%a%d%d%d%d%)%.wsf") ~= nil or (string.find)(l_0_0, "aprilinv%(%a%a%d%d%d%d%)%.wsf") ~= nil or (string.find)(l_0_0, "activity%-april%(%d%d%d%d%)%.wsf") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

