-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BLKEXCb2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4\0x000011d2_luac 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4") ~= true then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
if (string.lower)((string.sub)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME), -4)) ~= ".msi" then
  return mp.CLEAN
end
if (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) ~= "msiexec.exe" then
  return mp.CLEAN
end
if (mp.IsTrustedFile)(false) == true then
  return mp.CLEAN
end
local l_0_0 = "enghipscpy:blockexecution:b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4"
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
l_0_1 = (string.lower)((MpCommon.PathToWin32Path)(l_0_1))
if (mp.IsPathExcludedForHipsRule)(l_0_1, "b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4") then
  return mp.CLEAN
end
if (MpCommon.QueryPersistContext)(l_0_1, l_0_0) then
  (mp.set_mpattribute)("MpDisableCaching")
  return mp.INFECTED
else
  if (mp.bitand)((mp.get_contextdata)(mp.CONTEXT_DATA_DEVICE_CHARACTERISTICS), 264193) == 264193 then
    (mp.set_mpattribute)("MpDisableCaching")
    if (MpCommon.GetPersistContextCount)(l_0_1) == 0 then
      local l_0_2 = {}
      ;
      (table.insert)(l_0_2, l_0_0)
      ;
      (MpCommon.SetPersistContext)(l_0_1, l_0_2, 0)
    else
      do
        if not (MpCommon.QueryPersistContext)(l_0_1, l_0_0) then
          (MpCommon.AppendPersistContext)(l_0_1, l_0_0, 0)
        end
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

