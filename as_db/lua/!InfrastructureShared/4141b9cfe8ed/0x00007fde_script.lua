-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4141b9cfe8ed\0x00007fde_luac 

-- params : ...
-- function num : 0
if (versioning.GetTestMode)() ~= 65000 and (MpCommon.IsSampled)(1000, true, true, true) == false then
  return mp.CLEAN
end
local l_0_0 = (this_sigattrlog[1]).utf8p1
local l_0_1 = (this_sigattrlog[3]).utf8p1
local l_0_2 = "NRI-DNS-ALT-SRV"
local l_0_3 = (string.format)("%s_%s", l_0_2, l_0_0)
local l_0_4 = (MpCommon.GetPersistContextCountNoPath)(l_0_3)
if l_0_4 and l_0_4 > 0 then
  return mp.CLEAN
end
if isAlternateDNSServer(l_0_0) then
  local l_0_5 = "altDNS_" .. l_0_0
  local l_0_6 = (MpCommon.QueryPersistContextNoPath)(l_0_5, l_0_1)
  if not l_0_6 then
    (MpCommon.AppendPersistContextNoPath)(l_0_5, l_0_1, 3600)
  end
  local l_0_7 = (MpCommon.GetPersistContextCountNoPath)(l_0_5)
  if l_0_7 > 5 then
    (MpCommon.AppendPersistContextNoPath)(l_0_2, l_0_5, 60)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

