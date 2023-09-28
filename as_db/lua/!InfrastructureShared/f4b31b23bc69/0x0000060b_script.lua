-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\f4b31b23bc69\0x0000060b_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC21: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil and (this_sigattrlog[1]).ppid ~= nil then
  local l_0_0, l_0_1, l_0_2, l_0_4, l_0_6 = nil, nil
  l_0_2 = this_sigattrlog
  l_0_2 = l_0_2[1]
  l_0_1 = l_0_2.ppid
  local l_0_3, l_0_5, l_0_7 = nil
end
do
  -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC27: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC30: Confused about usage of register: R1 in 'UnsetPending'

  if l_0_0 == nil or #l_0_0 < 3 or l_0_1 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC37: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC43: Confused about usage of register: R1 in 'UnsetPending'

  if (string.match)(l_0_0, "/%.[^/]+$") and IsDiscoveryCollectionThresholdMetLinux(l_0_1) then
    addRelatedProcess()
    reportRelatedBmHits()
    return mp.INFECTED
  end
  return mp.CLEAN
end

