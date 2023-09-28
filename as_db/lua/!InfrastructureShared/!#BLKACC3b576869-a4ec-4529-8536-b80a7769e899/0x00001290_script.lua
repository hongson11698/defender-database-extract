-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BLKACC3b576869-a4ec-4529-8536-b80a7769e899\0x00001290_luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("3b576869-a4ec-4529-8536-b80a7769e899") then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if GetCtxOfficeProc() ~= "productivity" then
  if (MpCommon.GetPersistContextCountNoPath)("BlockOfficeCreateExecContentProcs") == 0 then
    return mp.CLEAN
  end
  local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
  if l_0_0 == "" or l_0_0 == nil then
    return mp.CLEAN
  end
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
  if l_0_1 == "" or l_0_1 == nil then
    return mp.CLEAN
  end
  l_0_1 = (string.lower)(l_0_1)
  local l_0_2 = l_0_1 .. "+" .. l_0_0
  if not (MpCommon.QueryPersistContextNoPath)("BlockOfficeCreateExecContentProcs", l_0_2) then
    return mp.CLEAN
  end
end
do
  local l_0_3 = {}
  l_0_3[".bat"] = true
  l_0_3[".cmd"] = true
  l_0_3[".hta"] = true
  l_0_3[".jar"] = true
  l_0_3[".js"] = true
  l_0_3[".jse"] = true
  l_0_3[".lnk"] = true
  l_0_3[".pif"] = true
  l_0_3[".ps1"] = true
  l_0_3[".psc1"] = true
  l_0_3[".settingcontent-ms"] = true
  l_0_3[".appcontent-ms"] = true
  l_0_3[".application"] = true
  l_0_3[".scr"] = true
  l_0_3[".sys"] = true
  l_0_3[".vbe"] = true
  l_0_3[".vbs"] = true
  l_0_3[".wsc"] = true
  l_0_3[".wsf"] = true
  l_0_3[".wsh"] = true
  l_0_3[".ocx"] = true
  l_0_3[".com"] = true
  l_0_3[".exe"] = true
  l_0_3[".dll"] = true
  l_0_3[".xll"] = true
  local l_0_4 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  l_0_4 = (l_0_4 == nil and "" or l_0_4):lower()
  if (l_0_4:sub(-20)):match("(%.[%w%-]+)$") ~= nil or not "" then
    local l_0_6 = nil
    local l_0_7 = nil
    if (mp.IsPathExcludedForHipsRule)(((MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)) == nil and "" or (MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))):lower() .. "\\" .. l_0_4, "3b576869-a4ec-4529-8536-b80a7769e899") then
      return mp.CLEAN
    end
    local l_0_8 = nil
    local l_0_9 = ((mp.ContextualExpandEnvironmentVariables)("%appdata%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%appdata%")):lower()
    local l_0_10 = ((mp.ContextualExpandEnvironmentVariables)("%localappdata%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%localappdata%")):lower()
    local l_0_11 = ((mp.ContextualExpandEnvironmentVariables)("%temp%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%temp%")):lower()
    local l_0_12 = ((MpCommon.ExpandEnvironmentVariables)("%programdata%") == nil and "" or (MpCommon.ExpandEnvironmentVariables)("%programdata%")):lower()
    local l_0_13 = ((MpCommon.ExpandEnvironmentVariables)("%systemdrive%") == nil and "" or (MpCommon.ExpandEnvironmentVariables)("%systemdrive%")):lower()
    local l_0_14 = ((MpCommon.ExpandEnvironmentVariables)("%systemroot%") == nil and "" or (MpCommon.ExpandEnvironmentVariables)("%systemroot%")):lower()
    local l_0_15 = ((mp.ContextualExpandEnvironmentVariables)("%userprofile%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%userprofile%")):lower()
    local l_0_16 = ((MpCommon.ExpandEnvironmentVariables)("%programfiles%") == nil and "" or (MpCommon.ExpandEnvironmentVariables)("%programfiles%")):lower()
    if l_0_3[l_0_6] == true then
      if l_0_6 == ".lnk" then
        if l_0_7:find(l_0_9 .. "\\microsoft\\office\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_9 .. "\\microsoft\\excel\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_9 .. "\\microsoft\\onenote\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_9 .. "\\microsoft\\outlook\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_9 .. "\\microsoft\\olk\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_9 .. "\\microsoft\\powerpoint\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_9 .. "\\microsoft\\word\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_9 .. "\\microsoft\\internet explorer\\quick launch", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_9 .. "\\roaming\\microsoft\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7 == l_0_9 .. "\\microsoft\\windows\\start menu\\programs\\startup" then
          return mp.CLEAN
        end
        if l_0_7 == l_0_10 .. "\\packages\\microsoft.office.desktop_8wekyb3d8bbwe\\localcache\\roaming\\microsoft\\internet explorer\\quick launch" then
          return mp.CLEAN
        end
        if l_0_7 == l_0_10 .. "\\packages\\microsoft.office.desktop_8wekyb3d8bbwe\\localcache\\roaming\\microsoft\\office\\recent" then
          return mp.CLEAN
        end
        if l_0_7 == l_0_10 .. "\\packages\\microsoft.office.desktop_8wekyb3d8bbwe\\localcache\\roaming\\microsoft\\windows\\start menu\\programs\\startup" then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_10 .. "\\invincea\\enterprise\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_13 .. "\\appsensevirtual\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7:find(l_0_14 .. "\\syswow64\\config\\systemprofile\\appdata\\roaming\\microsoft\\office\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_7 == l_0_15 .. "\\documents\\my data sources" then
          return mp.CLEAN
        end
        if l_0_7 == l_0_15 .. "\\onedrive\\documents\\my data sources" then
          return mp.CLEAN
        end
        local l_0_17 = ((MpCommon.ExpandEnvironmentVariables)("%programfiles(x86)%") == nil and "" or (MpCommon.ExpandEnvironmentVariables)("%programfiles(x86)%")):lower()
        if (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE) ~= nil and ((mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)):find("\\device\\harddiskvolume%d+\\users\\[^\\]+\\appdata\\roaming\\microsoft\\office\\") ~= nil then
          return mp.CLEAN
        end
      else
        do
          if l_0_6 == ".js" then
            if l_0_7:find(l_0_10 .. "\\microsoft\\windows\\inetcache\\ie\\", 1, true) ~= nil then
              return mp.CLEAN
            end
            if l_0_7:find(l_0_10 .. "\\microsoft\\windows\\temporary internet files\\content.ie5\\", 1, true) ~= nil then
              return mp.CLEAN
            end
            if l_0_7:find(l_0_10 .. "\\microsoft\\windows\\inetcache1\\temporary internet files\\ie\\", 1, true) ~= nil then
              return mp.CLEAN
            end
            if l_0_7:find(l_0_10 .. "\\packages\\microsoft.office.desktop_8wekyb3d8bbwe\\ac\\inetcache\\", 1, true) ~= nil then
              return mp.CLEAN
            end
            if l_0_7:find(l_0_10 .. "\\microsoft\\office\\16.0\\smartlookupcache\\", 1, true) ~= nil then
              return mp.CLEAN
            end
            if l_0_7:find(l_0_9 .. "\\refinitiv\\", 1, true) ~= nil then
              return mp.CLEAN
            end
            if l_0_8:find(l_0_15 .. "\\inetcache\\ie\\[^\\]+\\[^\\]+%.js$") ~= nil then
              return mp.CLEAN
            end
            local l_0_18 = nil
            if (mp.ContextualGetShellKnownFolder)("352481E8-33BE-4251-BA85-6007CAEDCF9D") ~= nil and (mp.ContextualGetShellKnownFolder)("352481E8-33BE-4251-BA85-6007CAEDCF9D") ~= "" and l_0_7:find((mp.ContextualGetShellKnownFolder)("352481E8-33BE-4251-BA85-6007CAEDCF9D") .. "\\ie", 1, true) ~= nil then
              return mp.CLEAN
            end
            if l_0_7:find("%a:\\users\\[^\\]+\\appdata\\local\\microsoft\\windows\\inetcache\\ie\\") ~= nil then
              return mp.CLEAN
            end
            if l_0_7:find("%a:\\users\\[^\\]+\\inetcache\\ie\\") ~= nil then
              return mp.CLEAN
            end
            local l_0_19 = nil
            if ((mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)):find("\\device\\harddiskvolume%d+\\users\\[^\\]+\\appdata\\local\\microsoft\\windows\\inetcache\\ie\\") ~= nil then
              return mp.CLEAN
            end
            if ((mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)):find("\\device\\harddiskvolume%d+\\users\\[^\\]+\\inetcache\\ie\\") ~= nil then
              return mp.CLEAN
            end
            if ((mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)):find("\\device\\harddiskvolume%d+\\users\\[^\\]+\\appdata\\local\\microsoft\\office\\16.0\\smartlookupcache\\") ~= nil then
              return mp.CLEAN
            end
          else
            do
              -- DECOMPILER ERROR at PC655: Unhandled construct in 'MakeBoolean' P1

              if l_0_6 == ".application" and l_0_4:find("^%w%w%w%w%w%w%w%w%.%w%w%w%.application$") ~= nil then
                if l_0_7:find(l_0_11 .. "\\deployment\\%w%w%w%w%w%w%w%w%.%w%w%w") ~= nil then
                  return mp.CLEAN
                end
                if l_0_7:find(l_0_11 .. "\\%d+\\deployment\\%w%w%w%w%w%w%w%w%.%w%w%w") ~= nil then
                  return mp.CLEAN
                end
                local l_0_20 = nil
                if l_0_7:match("\\deployment\\%w%w%w%w%w%w%w%w%.%w%w%w$") ~= nil and l_0_7 == l_0_15 .. "\\appdata\\local\\temp" .. l_0_7:match("\\deployment\\%w%w%w%w%w%w%w%w%.%w%w%w$") then
                  return mp.CLEAN
                end
                if l_0_7:match(":\\users\\local_.*\\temp\\deployment\\%w%w%w%w%w%w%w%w%.%w%w%w") ~= nil then
                  return mp.CLEAN
                end
              end
              do
                if l_0_6 == ".dll" or l_0_6 == ".exe" then
                  if (mp.IsTrustedFile)(false) == true then
                    return mp.CLEAN
                  end
                  if l_0_7:find(l_0_10 .. "\\assembly\\tmp\\", 1, true) ~= nil then
                    return mp.CLEAN
                  end
                  if l_0_7:find(l_0_10 .. "\\temp\\deployment\\", 1, true) ~= nil then
                    return mp.CLEAN
                  end
                  if l_0_7:find(l_0_11 .. "\\deployment\\", 1, true) ~= nil then
                    return mp.CLEAN
                  end
                  if l_0_7:find(l_0_10 .. "\\apps\\2.0\\.+\\dealanalysistool.dll") ~= nil then
                    return mp.CLEAN
                  end
                  if (mp.get_mpattribute)("Lua:SignedThinkCellComponent") then
                    return mp.CLEAN
                  end
                  if l_0_6 == ".dll" and (mp.get_mpattribute)("SOAPSchema.A") then
                    return mp.CLEAN
                  end
                else
                  if l_0_6 == ".com" and l_0_7:find(l_0_11 .. "\\microsoft\\team foundation\\[^\\]+\\cache\\avatars\\") ~= nil then
                    return mp.CLEAN
                  end
                end
                ;
                (mp.set_mpattribute)("MpDisableCaching")
                do return mp.INFECTED end
                if l_0_7:find(l_0_12 .. "\\microsoft\\windows\\start menu\\programs\\startup", 1, true) ~= nil then
                  return mp.INFECTED
                end
                if l_0_7:find(l_0_9 .. "\\microsoft\\windows\\start menu\\programs\\startup", 1, true) ~= nil then
                  return mp.INFECTED
                end
                if (mp.get_mpattribute)("BM_CONTAINER_FILE") or (mp.get_mpattribute)("BM_SCRIPT_OR_TEXT_FILE") then
                  if (MpCommon.QueryPersistContext)(l_0_8, "DroppedByOfficeProc") then
                    return mp.CLEAN
                  end
                  ;
                  (MpCommon.AppendPersistContext)(l_0_8, "DroppedByOfficeProc", 0)
                  ;
                  (mp.ReportLowfi)((mp.getfilename)(), 1585622778)
                  ;
                  (mp.set_mpattribute)("MpDisableCaching")
                end
                return mp.CLEAN
              end
            end
          end
        end
      end
    end
  end
end

