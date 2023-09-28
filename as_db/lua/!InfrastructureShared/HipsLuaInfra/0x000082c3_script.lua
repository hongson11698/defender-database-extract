-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\HipsLuaInfra\0x000082c3_luac 

-- params : ...
-- function num : 0
GetCtxOfficeProc = function()
  -- function num : 0_0
  local l_1_0 = {}
  l_1_0["excel.exe"] = "productivity"
  l_1_0["onenote.exe"] = "productivity"
  l_1_0["outlook.exe"] = "communication"
  l_1_0["powerpnt.exe"] = "productivity"
  l_1_0["winword.exe"] = "productivity"
  l_1_0["lync.exe"] = "communication2"
  l_1_0["msaccess.exe"] = "productivity2"
  l_1_0["mspub.exe"] = "productivity2"
  l_1_0["visio.exe"] = "productivity2"
  local l_1_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
  if l_1_1 == nil or l_1_1 == "" then
    return ""
  end
  l_1_1 = (string.lower)(l_1_1)
  if l_1_0[l_1_1] == nil and not isOutlookProcess(l_1_1) then
    return ""
  end
  local l_1_2 = (MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
  if l_1_2 == nil or l_1_2 == "" then
    return ""
  end
  l_1_2 = (string.lower)(l_1_2)
  local l_1_3 = (MpCommon.ExpandEnvironmentVariables)("%programfiles%")
  if l_1_3 == nil or l_1_3 == "" then
    return ""
  end
  l_1_3 = (string.lower)(l_1_3)
  local l_1_4 = (MpCommon.ExpandEnvironmentVariables)("%programfiles(x86)%")
  if l_1_4 == nil or l_1_4 == "" then
    return ""
  end
  l_1_4 = (string.lower)(l_1_4)
  if l_1_2 == l_1_3 .. "\\microsoft office\\root\\office14" or l_1_2 == l_1_3 .. "\\microsoft office\\root\\office15" or l_1_2 == l_1_3 .. "\\microsoft office\\root\\office16" or l_1_2 == l_1_3 .. "\\microsoft office\\office14" or l_1_2 == l_1_3 .. "\\microsoft office\\office15" or l_1_2 == l_1_3 .. "\\microsoft office\\office16" or l_1_2 == l_1_4 .. "\\microsoft office\\root\\office14" or l_1_2 == l_1_4 .. "\\microsoft office\\root\\office15" or l_1_2 == l_1_4 .. "\\microsoft office\\root\\office16" or l_1_2 == l_1_4 .. "\\microsoft office\\office14" or l_1_2 == l_1_4 .. "\\microsoft office\\office15" or l_1_2 == l_1_4 .. "\\microsoft office\\office16" or l_1_2:find(l_1_3 .. "\\windowsapps\\microsoft.office.desktop.", 1, true) ~= nil or l_1_2:find(l_1_4 .. "\\windowsapps\\microsoft.office.desktop.", 1, true) ~= nil then
    return l_1_0[l_1_1]
  end
  return ""
end

is_signed = function()
  -- function num : 0_1
  local l_2_0 = (mp.GetCertificateInfo)()
  for l_2_4,l_2_5 in pairs(l_2_0) do
    if l_2_5.Signers ~= nil then
      return true
    end
  end
  return false
end

GetInvolvedFileInCmdLnIfExistOnMachine = function()
  -- function num : 0_2
  local l_3_0 = nil
  local l_3_1 = nil
  do
    if (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID) ~= nil then
      local l_3_2 = nil
      if (mp.GetProcessCommandLine)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)) ~= nil and (mp.GetProcessCommandLine)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)) ~= "" then
        l_3_1 = (string.match)((string.lower)((mp.GetProcessCommandLine)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID))), ".:\\program files\\microsoft office\\root\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
        -- DECOMPILER ERROR at PC32: Confused about usage of register: R2 in 'UnsetPending'

        if l_3_1 == nil or l_3_1 == "" then
          l_3_1 = (string.match)((string.lower)((mp.GetProcessCommandLine)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID))), ".:\\program files\\microsoft office\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
          -- DECOMPILER ERROR at PC42: Confused about usage of register: R2 in 'UnsetPending'

          if l_3_1 == nil or l_3_1 == "" then
            l_3_1 = (string.match)((string.lower)((mp.GetProcessCommandLine)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID))), ".:\\program files %(x86%)\\microsoft office\\root\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
            -- DECOMPILER ERROR at PC52: Confused about usage of register: R2 in 'UnsetPending'

            if l_3_1 == nil or l_3_1 == "" then
              l_3_1 = (string.match)((string.lower)((mp.GetProcessCommandLine)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID))), ".:\\program files %(x86%)\\microsoft office\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
              -- DECOMPILER ERROR at PC62: Confused about usage of register: R2 in 'UnsetPending'

              if l_3_1 == nil or l_3_1 == "" then
                l_3_1 = (string.match)((string.lower)((mp.GetProcessCommandLine)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID))), ".:\\program files\\windowsapps\\microsoft%.office[^\\]+\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
                -- DECOMPILER ERROR at PC72: Confused about usage of register: R2 in 'UnsetPending'

                if l_3_1 == nil or l_3_1 == "" then
                  l_3_1 = (string.match)((string.lower)((mp.GetProcessCommandLine)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID))), ".:\\program files %(x86%)\\windowsapps\\microsoft%.office[^\\]+\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
                end
              end
            end
          end
        end
      end
    end
    if l_3_1 == nil or l_3_1 == "" then
      return nil
    end
    l_3_1 = (MpCommon.PathToWin32Path)(l_3_1)
    if l_3_1 ~= "" and l_3_1 ~= nil then
      return l_3_1
    end
    return nil
  end
end

GetNonVfoAmsiContentNamePathIfExistOnMachine = function()
  -- function num : 0_3
  if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_AMSI then
    return nil
  end
  local l_4_0 = nil
  l_4_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_AMSI_CONTENTNAME)
  if l_4_0 == nil or l_4_0 == "" then
    return nil
  end
  local l_4_1, l_4_2 = (string.match)(l_4_0, "(.*)%.(%a+)->%w+/%w+.bin$")
  if l_4_1 == nil or l_4_1 == "" or l_4_2 == nil or l_4_2 == "" then
    return nil
  end
  l_4_0 = l_4_1 .. "." .. l_4_2
  l_4_0 = (string.lower)((MpCommon.PathToWin32Path)(l_4_0))
  if l_4_0 == nil or l_4_0 == "" then
    return nil
  end
  if (sysio.IsFileExists)(l_4_0) then
    return l_4_0
  end
  return nil
end

GetNonVfoScannedFilePathIfExistOnMachine = function()
  -- function num : 0_4
  local l_5_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_CNAME, mp.FILEPATH_QUERY_LOWERCASE))
  if l_5_0 == nil or l_5_0 == "" then
    return nil
  end
  local l_5_1 = (string.lower)((MpCommon.PathToWin32Path)(l_5_0))
  if l_5_1 == nil or l_5_1 == "" then
    return nil
  end
  if (sysio.IsFileExists)(l_5_1) then
    return l_5_1
  end
  return nil
end


