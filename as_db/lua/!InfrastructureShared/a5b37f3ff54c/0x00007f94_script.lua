-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a5b37f3ff54c\0x00007f94_luac 

-- params : ...
-- function num : 0
if not (versioning.IsSeville)() and not (versioning.IsServer)() and (MpCommon.IsSampled)(11000, true, true, true) == false then
  return mp.CLEAN
end
local l_0_0, l_0_1, l_0_2 = getCurrentProcessInjectors()
if l_0_2 ~= nil then
  (bm.add_related_string)("GenRansom_injected", safeJsonSerialize(l_0_2), bm.RelatedStringBMReport)
end
if l_0_1 ~= nil then
  (bm.add_related_string)("GenRansom_injector", safeJsonSerialize(l_0_1), bm.RelatedStringBMReport)
end
if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).utf8p2 and reportGenericRansomware((this_sigattrlog[8]).utf8p2) == mp.INFECTED then
  reportTimingData()
  return mp.INFECTED
end
return mp.CLEAN

