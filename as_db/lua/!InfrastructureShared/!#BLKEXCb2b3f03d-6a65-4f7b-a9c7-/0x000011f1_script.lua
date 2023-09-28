-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BLKEXCb2b3f03d-6a65-4f7b-a9c7-\0x000011f1_luac 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4") ~= true then
  return mp.CLEAN
end
if not peattributes.isexe and not peattributes.isdll then
  return mp.CLEAN
end
local l_0_0 = "enghipscpy:blockexecution:b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4"
local l_0_1 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
if (mp.bitand)((mp.get_contextdata)(mp.CONTEXT_DATA_DEVICE_CHARACTERISTICS), 264193) ~= 264193 and not (MpCommon.QueryPersistContext)(l_0_1, l_0_0) then
  return mp.CLEAN
end
if (mp.IsPathExcludedForHipsRule)(l_0_1, "b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4") then
  return mp.CLEAN
end
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
    ;
    (mp.set_mpattribute)("MpDisableCaching")
    local l_0_3 = (versioning.GetOsBuildNumber)()
    if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN then
      if peattributes.isdll then
        local l_0_4 = {}
        l_0_4["rundll32.exe"] = true
        l_0_4["regsvr32.exe"] = true
        local l_0_5 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
        if l_0_5 and l_0_4[l_0_5:lower()] == true and (mp.IsTrustedFile)(false) == false then
          (mp.set_mpattribute)("BM_BLKEXC:b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4")
          return mp.INFECTED
        end
      else
        do
          if peattributes.isexe and ((mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) == true or l_0_3 < 10240) and (mp.IsTrustedFile)(false) == false then
            (mp.set_mpattribute)("BM_BLKEXC:b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4")
            return mp.INFECTED
          end
          return mp.CLEAN
        end
      end
    end
  end
end

