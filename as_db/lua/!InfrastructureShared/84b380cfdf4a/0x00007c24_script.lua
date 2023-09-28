-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\84b380cfdf4a\0x00007c24_luac 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.RollingQueueCount)("TamperingAlerts")
if l_0_0 ~= nil and l_0_0 >= 2 then
  sms_untrusted_process()
  local l_0_1 = mp.CLEAN
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 then
    l_0_1 = reportGenericRansomware((this_sigattrlog[1]).utf8p2)
  else
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 then
      l_0_1 = reportGenericRansomware((this_sigattrlog[2]).utf8p2)
    end
  end
  if l_0_1 == mp.INFECTED then
    reportTimingData()
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

