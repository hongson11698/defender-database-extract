-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BLKEXCb2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4\0x0000124f_luac 

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
  if (mp.bitand)((mp.get_contextdata)(mp.CONTEXT_DATA_DEVICE_CHARACTERISTICS), 264193) == 264193 then
    local l_0_2 = {}
    l_0_2["cmd.exe"] = true
    l_0_2["powershell.exe"] = true
    l_0_2["wscript.exe"] = true
    l_0_2["cscript.exe"] = true
    l_0_2["schtasks.exe"] = true
    l_0_2["at.exe"] = true
    l_0_2["bitsadmin.exe"] = true
    l_0_2["mshta.exe"] = true
    l_0_2["rundll32.exe"] = true
    l_0_2["regasm.exe"] = true
    l_0_2["regsvc.exe"] = true
    l_0_2["regsvr32.exe"] = true
    l_0_2["msbuild.exe"] = true
    l_0_2["certutil.exe"] = true
    l_0_2["installutil.exe"] = true
    l_0_2["msiexec.exe"] = true
    local l_0_3 = {}
    l_0_3.exe = true
    l_0_3.msi = true
    l_0_3.js = true
    l_0_3.vbs = true
    l_0_3.ps1 = true
    l_0_3.cmd = true
    l_0_3.bat = true
    local l_0_4 = (mp.GetLnkInfo)()
    if l_0_4 == nil or l_0_4 == "" then
      return mp.CLEAN
    end
    local l_0_5 = false
    local l_0_6 = l_0_4.BasePath
    if l_0_6 ~= nil then
      l_0_6 = (mp.ContextualExpandEnvironmentVariables)(l_0_6)
      if l_0_6 ~= nil then
        l_0_6 = (MpCommon.PathToWin32Path)(l_0_6)
        if l_0_6 ~= nil then
          l_0_6 = (string.lower)(l_0_6)
          if (sysio.IsFileExists)(l_0_6) then
            local l_0_7 = (string.match)(l_0_6, "\\.+%.([^%.\\]+)$")
            if l_0_2[(string.match)(l_0_6, "\\([^\\]+%.exe)$")] == true or l_0_7 ~= nil and l_0_7 ~= "" and l_0_3[l_0_7] == true and not (mp.IsKnownFriendlyFile)(l_0_6, false, true) then
              l_0_5 = true
            end
          end
        end
      end
    end
    do
      if l_0_5 == false then
        local l_0_8 = l_0_4.RelativePath
        if l_0_8 ~= nil then
          if (string.find)(l_0_8, "^%.%.\\") then
            l_0_5 = true
          else
            if (string.find)(l_0_8, "^%.\\") then
              l_0_8 = (string.match)(l_0_8, "^%.\\(.+)$")
            end
            local l_0_9 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)))
            local l_0_10 = l_0_9 .. "\\" .. l_0_8
            l_0_10 = (string.lower)(l_0_10)
            if (sysio.IsFileExists)(l_0_10) then
              local l_0_11 = (string.match)(l_0_10, "\\.+%.([^%.\\]+)$")
              if l_0_2[(string.match)(l_0_10, "\\([^\\]+%.exe)$")] == true or l_0_11 ~= nil and l_0_11 ~= "" and l_0_3[l_0_11] == true and not (mp.IsKnownFriendlyFile)(l_0_10, false, true) then
                l_0_5 = true
              end
            end
          end
        end
      end
      do
        if l_0_5 == false then
          return mp.CLEAN
        end
        ;
        (mp.set_mpattribute)("MpDisableCaching")
        if (MpCommon.GetPersistContextCount)(l_0_1) == 0 then
          local l_0_12 = {}
          ;
          (table.insert)(l_0_12, l_0_0)
          ;
          (MpCommon.SetPersistContext)(l_0_1, l_0_12, 0)
        else
          do
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
    end
  end
end

