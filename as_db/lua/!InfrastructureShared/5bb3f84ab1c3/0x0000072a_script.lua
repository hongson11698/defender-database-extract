-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb3f84ab1c3\0x0000072a_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_2 = getCurrentProcessInjectors()
if l_0_2.count >= 5 then
  (bm.add_related_string)("injection_relationship", safeJsonSerialize(l_0_0), bm.RelatedStringBMReport)
  ;
  (bm.add_related_string)("GenRansom_injected", safeJsonSerialize(l_0_2), bm.RelatedStringBMReport)
  ;
  (bm.add_related_string)("GenRansom_injector", safeJsonSerialize(l_0_1), bm.RelatedStringBMReport)
  local l_0_3, l_0_4 = (bm.get_process_relationships)()
  for l_0_8,l_0_9 in ipairs(l_0_3) do
    if l_0_9.image_path ~= nil then
      local l_0_10 = (string.lower)((MpCommon.PathToWin32Path)(l_0_9.image_path))
      if (sysio.IsFileExists)(l_0_10) and not (mp.IsKnownFriendlyFile)(l_0_10, true, false) then
        if l_0_9.ppid ~= nil then
          (bm.add_threat_process)(l_0_9.ppid)
        end
        ;
        (bm.add_threat_file)(l_0_10)
      end
    end
  end
  for l_0_14,l_0_15 in ipairs(l_0_4) do
    if l_0_15.image_path ~= nil then
      local l_0_16 = (string.lower)((MpCommon.PathToWin32Path)(l_0_15.image_path))
      if (sysio.IsFileExists)(l_0_16) and not (mp.IsKnownFriendlyFile)(l_0_16, true, false) then
        if l_0_15.ppid ~= nil then
          (bm.add_threat_process)(l_0_15.ppid)
        end
        ;
        (bm.add_threat_file)(l_0_16)
      end
    end
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

