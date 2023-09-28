-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\15a41e88cbb3e\0x00000883_luac 

-- params : ...
-- function num : 0
local l_0_2 = nil
local l_0_3 = nil
local l_0_4 = 0
local l_0_5 = "RcloneMega"
local l_0_6 = {}
local l_0_7 = 3600
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil and (this_sigattrlog[3]).utf8p2 ~= nil then
  local l_0_0 = 100
  local l_0_1 = "|"
end
do
  if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
    l_0_4 = tonumber((this_sigattrlog[6]).utf8p2)
  end
  -- DECOMPILER ERROR at PC44: Confused about usage of register: R7 in 'UnsetPending'

  local l_0_8 = nil
  local l_0_9 = nil
  local l_0_10 = nil
  local l_0_11 = l_0_2 .. l_0_1 .. l_0_3 .. "count"
  if (MpCommon.AtomicCounterValue)(l_0_10) == nil then
    (MpCommon.AtomicCounterSet)(l_0_10, l_0_4, 600)
    ;
    (MpCommon.AtomicCounterSet)(l_0_11, 1, 600)
  else
    -- DECOMPILER ERROR at PC79: Confused about usage of register: R10 in 'UnsetPending'

    -- DECOMPILER ERROR at PC86: Confused about usage of register: R11 in 'UnsetPending'

    if (MpCommon.AtomicCounterAdd)(l_0_10, l_0_4) + l_0_4 > 75000000 and (MpCommon.AtomicCounterAdd)(l_0_11, 1) + 1 > 10 then
      l_0_6.ContentLen = (MpCommon.AtomicCounterAdd)(l_0_10, l_0_4) + l_0_4
      -- DECOMPILER ERROR at PC87: Confused about usage of register: R10 in 'UnsetPending'

      l_0_6.Threshold = (MpCommon.AtomicCounterAdd)(l_0_11, 1) + 1
      l_0_6.ProcPath = l_0_2
      AppendToRollingQueue(l_0_5, l_0_10, l_0_6, l_0_7, l_0_8, 0)
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

