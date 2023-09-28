-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4ab38e018860\0x00000891_luac 

-- params : ...
-- function num : 0
local l_0_0 = 16
local l_0_1 = this_sigattrlog[1]
if not l_0_1.matched or not l_0_1.utf8p2 then
  return mp.CLEAN
end
local l_0_2 = this_sigattrlog[2]
if not l_0_2.matched or not l_0_2.ppid then
  return mp.CLEAN
end
if (MpCommon.IsFriendlyProcess)(l_0_2.ppid) then
  return mp.CLEAN
end
local l_0_3 = (string.format)("susp_regions:%s", l_0_2.ppid)
local l_0_4 = GetRollingQueueKeys(l_0_3)
if not l_0_4 or type(l_0_4) ~= "table" then
  return mp.CLEAN
end
local l_0_5 = (string.format)("ScanBeaconing.A:%s", l_0_2.ppid)
local l_0_6 = pcall(MpCommon.AtomicCounterValue, l_0_5)
if not l_0_6 then
  return mp.CLEAN
end
if not MpCommon.AtomicCounterValue and not pcall(MpCommon.AtomicCounterSet, l_0_5, 0, 3600) then
  return mp.CLEAN
end
do
  local l_0_7, l_0_14 = 0
  -- DECOMPILER ERROR at PC80: Confused about usage of register: R7 in 'UnsetPending'

  if l_0_7 == l_0_0 then
    return mp.CLEAN
  end
  for l_0_11,l_0_12 in ipairs(l_0_4) do
    local l_0_8 = nil
    -- DECOMPILER ERROR at PC93: Confused about usage of register: R12 in 'UnsetPending'

    ;
    (mp.TriggerScanResource)("ems", (string.format)("%s,address:%s,size:0", l_0_2.ppid, 3600 + l_0_8))
  end
  if not pcall(MpCommon.AtomicCounterAdd, l_0_5, 1) then
    return mp.CLEAN
  end
  ;
  (bm.trigger_sig)("ScanSuspiciousRegions", l_0_1.utf8p2, l_0_2.ppid)
  return mp.CLEAN
end

