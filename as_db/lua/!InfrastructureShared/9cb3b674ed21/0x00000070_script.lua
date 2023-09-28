-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9cb3b674ed21\0x00000070_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 6000000000 then
  return mp.CLEAN
end
local l_0_0, l_0_1 = nil, nil
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil then
  l_0_0 = (string.lower)((this_sigattrlog[3]).utf8p1)
end
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[2]).utf8p2
end
if l_0_0 == nil or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (mp.ContextualExpandEnvironmentVariables)(l_0_0)
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = (mp.IsKnownFriendlyFile)(l_0_2, true, true)
if l_0_3 ~= nil and l_0_3 ~= false then
  return mp.CLEAN
end
local l_0_4 = (MpCommon.QueryPersistContext)(l_0_2, "NewPECreatedNoCert")
if not l_0_4 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1071", "command_control_a")
local l_0_5 = {}
l_0_5.src_ip = (string.match)(l_0_1, "SrcIp=(.-)%.")
l_0_5.src_port = (string.match)(l_0_1, "SrcPort=(.-)%.")
l_0_5.dst_ip = (string.match)(l_0_1, "DestIp=(.-)%.")
l_0_5.dst_port = (string.match)(l_0_1, "DestPort=(.-)%.")
if l_0_5.src_ip == l_0_5.dst_ip then
  return mp.CLEAN
end
if next(l_0_5) then
  (bm.set_detection_string)(safeJsonSerialize(l_0_5))
end
return mp.INFECTED

