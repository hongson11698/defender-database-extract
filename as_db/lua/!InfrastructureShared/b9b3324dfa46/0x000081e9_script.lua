-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\b9b3324dfa46\0x000081e9_luac 

-- params : ...
-- function num : 0
if not (versioning.IsSeville)() and not (versioning.IsServer)() and (MpCommon.IsSampled)(11000, true, true, true) == false then
  return mp.CLEAN
end
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if l_0_6.image_path ~= nil then
    local l_0_7 = (string.lower)((MpCommon.PathToWin32Path)(l_0_6.image_path))
    if (sysio.IsFileExists)(l_0_7) and not (mp.IsKnownFriendlyFile)(l_0_7, true, false) and l_0_6.ppid ~= nil then
      (bm.add_threat_process)(l_0_6.ppid)
    end
  end
end
for l_0_11,l_0_12 in ipairs(l_0_1) do
  if l_0_12.image_path ~= nil then
    local l_0_13 = (string.lower)((MpCommon.PathToWin32Path)(l_0_12.image_path))
    if (sysio.IsFileExists)(l_0_13) and not (mp.IsKnownFriendlyFile)(l_0_13, true, false) and l_0_12.ppid ~= nil then
      (bm.add_threat_process)(l_0_12.ppid)
    end
  end
end
local l_0_14, l_0_15, l_0_16 = getCurrentProcessInjectors()
if l_0_16 ~= nil then
  (bm.add_related_string)("GenRansom_injected", safeJsonSerialize(l_0_16), bm.RelatedStringBMReport)
end
if l_0_15 ~= nil then
  (bm.add_related_string)("GenRansom_injector", safeJsonSerialize(l_0_15), bm.RelatedStringBMReport)
end
if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).utf8p2 and reportGenericRansomware((this_sigattrlog[8]).utf8p2) == mp.INFECTED then
  reportTimingData()
  return mp.INFECTED
end
return mp.CLEAN

