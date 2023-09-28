-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\7f410306f81e\0x00000074_luac 

-- params : ...
-- function num : 0
local l_0_0 = (nri.GetURI)()
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = nil
if (this_sigattrlog[4]).matched then
  l_0_1 = (this_sigattrlog[4]).utf8p2
end
if (this_sigattrlog[5]).matched then
  l_0_1 = (this_sigattrlog[5]).utf8p2
end
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = nil
if (MpCommon.DoesProcessHaveAttribute)(l_0_1, "PFApp_Parent") then
  l_0_2 = (MpCommon.GetProcessAttributeValue)(l_0_1, "PFApp_Parent")
end
do
  if not l_0_2 then
    local l_0_3 = (MpCommon.DoesProcessHaveAttribute)(l_0_1, "inherit:PFApp_Parent")
    if l_0_3 then
      l_0_2 = (MpCommon.GetProcessAttributeValue)(l_0_1, "inherit:PFApp_Parent")
    end
  end
  if not l_0_2 then
    return mp.CLEAN
  end
  local l_0_4 = nil
  local l_0_5 = nil
  local l_0_6 = (MpCommon.AnomalyEventLookup)("PFApp_URI", "MarkerRecord", 1)
  -- DECOMPILER ERROR at PC75: Overwrote pending register: R6 in 'AssignReg'

  if l_0_6 then
    (MpCommon.AnomalyEventUpdate)(l_0_5, "MarkerRecord", 1, 1)
    local l_0_7 = 0
    local l_0_8 = nil
    if not (MpCommon.AnomalyEventLookup)(l_0_5, l_0_2 .. "_" .. l_0_0, 1) then
      (MpCommon.AnomalyEventUpdate)(l_0_5, l_0_8, 1, 1)
      if l_0_7 > 10080 then
        local l_0_9 = nil
        ;
        (nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), {useragent = (nri.GetHttpRequestHeader)("User-Agent"), referer = (nri.GetHttpRequestHeader)("referer")})
      end
    else
      do
        -- DECOMPILER ERROR at PC133: Confused about usage of register: R8 in 'UnsetPending'

        local l_0_10 = nil
        ;
        (MpCommon.AnomalyEventUpdate)(l_0_5, l_0_8, l_0_9.Count + 1, 1)
        do
          local l_0_11 = nil
          ;
          (nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), {useragent = (nri.GetHttpRequestHeader)("User-Agent"), referer = (nri.GetHttpRequestHeader)("referer")})
          do return mp.INFECTED end
          return mp.CLEAN
        end
      end
    end
  end
end

