-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007fab_luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("3b576869-a4ec-4529-8536-b80a7769e899") then
  return mp.CLEAN
end
local l_0_0, l_0_1 = nil, nil
if (this_sigattrlog[1]).matched then
  if (this_sigattrlog[1]).wp2 == nil or (this_sigattrlog[1]).wp2 == "" then
    return mp.CLEAN
  end
  l_0_0 = (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[1]).utf8p2)
  if l_0_0 == nil or l_0_0 == "" then
    return mp.CLEAN
  end
  if not (MpCommon.QueryPersistContext)(l_0_0, "DroppedByOfficeProc") then
    return mp.CLEAN
  end
  if (this_sigattrlog[1]).wp1 == nil or (this_sigattrlog[1]).wp1 == "" then
    return mp.CLEAN
  end
  l_0_1 = (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[1]).utf8p1)
  if l_0_1 == nil or l_0_1 == "" then
    return mp.CLEAN
  end
  if not (MpCommon.QueryPersistContext)(l_0_1, "DroppedByOfficeProc") then
    (MpCommon.AppendPersistContext)(l_0_1, "DroppedByOfficeProc", 0)
    return mp.INFECTED
  end
end
return mp.CLEAN

