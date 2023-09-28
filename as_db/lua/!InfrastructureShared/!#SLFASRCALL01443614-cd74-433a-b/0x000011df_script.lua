-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFASRCALL01443614-cd74-433a-b\0x000011df_luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("01443614-cd74-433a-b99e-2ecdc07bfc25") then
  return mp.CLEAN
end
local l_0_0 = (mp.get_parent_filehandle)()
if not (mp.is_handle_nil)(l_0_0) then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN then
  local l_0_1 = (versioning.GetOsBuildNumber)()
  if (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) == true or l_0_1 < 10240 then
    local l_0_2, l_0_3 = (mp.IsTrustedFile)(false)
    if l_0_2 == false then
      local l_0_4 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
      if l_0_4 ~= nil and l_0_4 ~= "" then
        l_0_4 = (string.lower)((MpCommon.PathToWin32Path)(l_0_4))
        if (mp.IsPathExcludedForHipsRule)(l_0_4, "01443614-cd74-433a-b99e-2ecdc07bfc25") then
          return mp.CLEAN
        end
        if (string.find)(l_0_4, "^.:\\programdata\\chocolatey\\bin\\[^%.\\]+%.exe$") ~= nil then
          return mp.CLEAN
        end
        if (string.find)(l_0_4, (string.lower)((MpCommon.ExpandEnvironmentVariables)("%systemroot%")) .. "\\system32\\mrt.exe", 1, true) ~= nil then
          return mp.CLEAN
        end
        if (string.find)(l_0_4, "^.:\\windows\\") ~= nil then
          local l_0_5 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
          if l_0_5 ~= nil and l_0_5 ~= "" and (string.lower)(l_0_5) == "powershell.exe" then
            local l_0_6 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
            if l_0_6 ~= nil then
              local l_0_7 = (mp.GetProcessCommandLine)(l_0_6)
              if l_0_7 ~= nil and #l_0_7 > 50 and (string.find)((string.lower)(l_0_7), "-executionpolicy allsigned .+windows defender advanced threat protection\\datacollection") ~= nil then
                return mp.CLEAN
              end
            end
          end
        end
      end
      do
        do
          do return mp.INFECTED end
          return mp.CLEAN
        end
      end
    end
  end
end

