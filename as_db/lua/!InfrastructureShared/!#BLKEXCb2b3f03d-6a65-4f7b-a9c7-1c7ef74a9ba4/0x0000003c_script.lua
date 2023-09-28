-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BLKEXCb2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4\0x0000003c_luac 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4") ~= true then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
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
  local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_DEVICE_CHARACTERISTICS)
  if (mp.bitand)(l_0_2, 1) ~= 1 and (mp.bitand)(l_0_2, 262144) ~= 262144 then
    return mp.CLEAN
  end
end
do
  local l_0_3 = {}
  l_0_3["cmd.exe"] = true
  l_0_3["powershell.exe"] = true
  l_0_3["wscript.exe"] = true
  l_0_3["cscript.exe"] = true
  l_0_3["schtasks.exe"] = true
  l_0_3["at.exe"] = true
  l_0_3["bitsadmin.exe"] = true
  l_0_3["mshta.exe"] = true
  l_0_3["rundll32.exe"] = true
  l_0_3["regasm.exe"] = true
  l_0_3["regsvc.exe"] = true
  l_0_3["regsvr32.exe"] = true
  l_0_3["msbuild.exe"] = true
  l_0_3["certutil.exe"] = true
  l_0_3["installutil.exe"] = true
  l_0_3["msiexec.exe"] = true
  local l_0_4 = {}
  l_0_4.exe = true
  l_0_4.msi = true
  l_0_4.js = true
  l_0_4.vbs = true
  l_0_4.ps1 = true
  l_0_4.cmd = true
  l_0_4.bat = true
  local l_0_5 = (mp.GetLnkInfo)()
  if l_0_5 == nil or l_0_5 == "" then
    return mp.CLEAN
  end
  local l_0_6 = false
  local l_0_7 = l_0_5.BasePath
  if l_0_7 ~= nil then
    l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
    if l_0_7 ~= nil then
      l_0_7 = (MpCommon.PathToWin32Path)(l_0_7)
      if l_0_7 ~= nil then
        l_0_7 = (string.lower)(l_0_7)
        if (sysio.IsFileExists)(l_0_7) then
          local l_0_8 = (string.match)(l_0_7, "\\.+%.([^%.\\]+)$")
          if l_0_3[(string.match)(l_0_7, "\\([^\\]+%.exe)$")] == true or l_0_8 ~= nil and l_0_8 ~= "" and l_0_4[l_0_8] == true and not (mp.IsKnownFriendlyFile)(l_0_7, false, true) then
            l_0_6 = true
          end
        end
      end
    end
  end
  do
    if l_0_6 == false then
      local l_0_9 = l_0_5.RelativePath
      if l_0_9 ~= nil then
        if (string.find)(l_0_9, "^%.%.\\") then
          l_0_6 = true
        else
          if (string.find)(l_0_9, "^%.\\") then
            l_0_9 = (string.match)(l_0_9, "^%.\\(.+)$")
          end
          local l_0_10 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)))
          local l_0_11 = l_0_10 .. "\\" .. l_0_9
          l_0_11 = (string.lower)(l_0_11)
          if (sysio.IsFileExists)(l_0_11) then
            local l_0_12 = (string.match)(l_0_11, "\\.+%.([^%.\\]+)$")
            if l_0_3[(string.match)(l_0_11, "\\([^\\]+%.exe)$")] == true or l_0_12 ~= nil and l_0_12 ~= "" and l_0_4[l_0_12] == true and not (mp.IsKnownFriendlyFile)(l_0_11, false, true) then
              l_0_6 = true
            end
          end
        end
      end
    end
    do
      if l_0_6 == false then
        return mp.CLEAN
      end
      ;
      (mp.set_mpattribute)("MpDisableCaching")
      if (MpCommon.GetPersistContextCount)(l_0_1) == 0 then
        local l_0_13 = {}
        ;
        (table.insert)(l_0_13, l_0_0)
        ;
        (MpCommon.SetPersistContext)(l_0_1, l_0_13, 0)
      else
        do
          if not (MpCommon.QueryPersistContext)(l_0_1, l_0_0) then
            (MpCommon.AppendPersistContext)(l_0_1, l_0_0, 0)
          end
          return mp.INFECTED
        end
      end
    end
  end
end

