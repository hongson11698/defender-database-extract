-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb31e884d88\0x00000827_luac 

-- params : ...
-- function num : 0
local l_0_3 = nil
local l_0_4 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0, l_0_1 = "RcloneMega", "|"
  l_0_4 = (this_sigattrlog[1]).ppid
  local l_0_2 = nil
end
do
  -- DECOMPILER ERROR at PC24: Confused about usage of register: R3 in 'UnsetPending'

  local l_0_5 = nil
  local l_0_6 = nil
  if GetRollingQueueKeyValue(l_0_5, l_0_3 .. l_0_1 .. l_0_4) ~= nil or type(GetRollingQueueKeyValue(l_0_5, l_0_3 .. l_0_1 .. l_0_4)) == "table" then
    (bm.add_related_string)(l_0_5, safeJsonSerialize(GetRollingQueueKeyValue(l_0_5, l_0_3 .. l_0_1 .. l_0_4)), bm.RelatedStringBMReport)
  end
  return mp.INFECTED
end

