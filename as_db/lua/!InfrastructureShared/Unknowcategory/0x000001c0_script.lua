-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000001c0_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if l_0_1 == nil then
  return mp.CLEAN
end
if (string.len)(l_0_1) > 800 then
  return mp.CLEAN
end
local l_0_2 = (string.match)(l_0_1, "(JABQAHIAbwBnAHIAZQBzAHMA[a-zA-Z0-9%+/]+=?=?)")
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = (MpCommon.Base64Decode)(l_0_2)
if l_0_3 == nil then
  return mp.CLEAN
end
l_0_3 = (string.gsub)(l_0_3, "%z", "")
l_0_3 = (string.lower)((string.gsub)(l_0_3, " ", ""))
if (string.find)(l_0_3, ";get-module-listavailable-nameactivedirectory", 1, true) or (string.find)(l_0_3, ";get-adgroup-filter*|where-objectname-match\"management\"|selectname", 1, true) or (string.find)(l_0_3, ";get-adgroupmember-identity\"servermanagement\"|selectname,samaccountname", 1, true) or (string.find)(l_0_3, ";get-adgroupmember-identity\"domainadmins\"|selectname,samaccountname", 1, true) or (string.find)(l_0_3, ";get-aduser-filter{lastlogondate-ne0}-properties*|selectname,samaccountname", 1, true) or (string.find)(l_0_3, ";get-adcomputer-filter*-properties*|selectname,dnsname,ipv4address,description", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

