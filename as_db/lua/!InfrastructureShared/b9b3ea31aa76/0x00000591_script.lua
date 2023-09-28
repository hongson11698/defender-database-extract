-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\b9b3ea31aa76\0x00000591_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 100000000 then
  return mp.CLEAN
end
local l_0_0 = (bm.get_connection_string)()
if l_0_0 then
  local l_0_1 = (string.match)(l_0_0, "DestIp=([^;]+)")
  if not l_0_1 then
    return mp.CLEAN
  end
  if IsHostAttackServer(l_0_1) then
    local l_0_2 = nil
    if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
      l_0_2 = (this_sigattrlog[6]).utf8p2
    end
    if l_0_2 ~= nil then
      (bm.request_SMS)((this_sigattrlog[6]).ppid, "L")
      ;
      (bm.trigger_sig)("active_attacker_server_connection_a", l_0_0, (this_sigattrlog[6]).ppid)
      TrackPidAndTechniqueBM("BM", "T1020", "active_attacker_server_connection_a")
      bm_AddRelatedFileFromCommandLine(l_0_2, nil, nil, 1)
      ;
      (bm.set_detection_string)("AttackerServer:" .. l_0_1)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

