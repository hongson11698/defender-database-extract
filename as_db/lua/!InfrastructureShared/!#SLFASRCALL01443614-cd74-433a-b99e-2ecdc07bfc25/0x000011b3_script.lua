-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFASRCALL01443614-cd74-433a-b99e-2ecdc07bfc25\0x000011b3_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONOPEN and l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if not (mp.IsHipsRuleEnabled)("01443614-cd74-433a-b99e-2ecdc07bfc25") then
  return mp.CLEAN
end
local l_0_1 = (mp.get_parent_filehandle)()
if not (mp.is_handle_nil)(l_0_1) then
  return mp.CLEAN
end
if l_0_0 == mp.SCANREASON_ONOPEN then
  local l_0_2 = {}
  l_0_2["rundll32.exe"] = true
  l_0_2["regsvr32.exe"] = true
  local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
  if l_0_3 == nil or l_0_3 == "" then
    return mp.CLEAN
  end
  if l_0_2[(string.lower)(l_0_3)] == true then
    if (mp.get_mpattribute)("MpDisableCaching") then
      (mp.clear_mpattribute)("MpDisableCaching")
    end
    local l_0_4 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
    if l_0_4 ~= nil and l_0_4 ~= "" then
      l_0_4 = (string.lower)((MpCommon.PathToWin32Path)(l_0_4))
      if (mp.IsPathExcludedForHipsRule)(l_0_4, "01443614-cd74-433a-b99e-2ecdc07bfc25") then
        return mp.CLEAN
      end
      if (string.find)(l_0_4, ".:\\windows\\installer\\[^\\]+%.tmp$") then
        return mp.CLEAN
      end
      if (string.find)(l_0_4, ".:\\windows\\installer\\[^%.]+%.tmp%-\\installercustomactions%.dll$") then
        return mp.CLEAN
      end
    end
    if (mp.IsTrustedFile)(false) == false then
      return mp.INFECTED
    end
  end
else
  do
    do
      local l_0_5, l_0_6 = (mp.IsTrustedFile)(false)
      if l_0_5 == false then
        (mp.set_mpattribute)("MpDisableCaching")
      end
      return mp.CLEAN
    end
  end
end

