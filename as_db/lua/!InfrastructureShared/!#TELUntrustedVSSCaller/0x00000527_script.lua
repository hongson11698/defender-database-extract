-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELUntrustedVSSCaller\0x00000527_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_mpattributevalue)("VSSAMSI_CallerPID")
local l_0_1 = (mp.get_mpattributevalue)("VSSAMSI_ProcessStartTime")
if l_0_0 == nil or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = true
local l_0_3 = false
local l_0_4, l_0_5, l_0_6 = nil, nil, nil
local l_0_7 = true
local l_0_8 = (string.format)("pid:%u,ProcessStart:%u", l_0_0, l_0_1)
l_0_7 = pcall((MpCommon.IsFriendlyProcess)(l_0_8))
do
  if l_0_7 == true and l_0_2 == false then
    local l_0_9 = (mp.GetProcessCommandLine)(l_0_8)
    ;
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=VSSUntrustedCaller=%s", l_0_9))
    TrackPidAndTechnique("VSSAMSI", "T1490", "inhibit_system_recovery")
    return mp.INFECTED
  end
  local l_0_10 = 0
  while 1 do
    if l_0_10 <= 5 then
      l_0_7 = pcall(mp.GetParentProcInfo, l_0_0)
    end
    if l_0_7 == true then
      if l_0_4 == nil then
        break
      end
      l_0_5 = l_0_4.ppid
    end
    if l_0_5 == nil then
      break
    end
    l_0_6 = l_0_4.image_path
    if l_0_6 == nil then
      break
    end
    l_0_6 = (string.lower)(l_0_6)
    l_0_7 = pcall((mp.IsKnownFriendlyFile)(l_0_6, true, false))
    if l_0_7 == true and l_0_3 == false then
      (mp.set_mpattribute)((string.format)("MpInternal_researchdata=VSSUntrustedParent=%s", l_0_6))
      TrackPidAndTechnique("VSSAMSI", "T1490", "inhibit_system_recovery")
      return mp.INFECTED
    end
    l_0_10 = l_0_10 + 1
  end
  return mp.CLEAN
end

