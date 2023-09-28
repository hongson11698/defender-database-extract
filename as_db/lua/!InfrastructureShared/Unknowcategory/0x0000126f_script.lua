-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000126f_luac 

-- params : ...
-- function num : 0
getCachePaths = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  local l_1_2 = {}
  -- DECOMPILER ERROR at PC7: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC10: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC11: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC31: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC38: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC51: Overwrote pending register: R7 in 'AssignReg'

  l_1_1["wlmail.exe"], l_1_2 = l_1_2, {"%internet_cache%\\content.ie5\\", "%internet_cache%\\ie\\", "microsoft\\windows\\temporary internet files\\content.ie5\\", "microsoft\\windows\\inetcache\\ie\\", "appdata\\roaming\\qualcomm\\eudora\\attachments\\"}
  l_1_1["hxmail.exe"], l_1_2 = l_1_2, {"appdata\\local\\packages\\microsoft.windowscommunicationsapps"}
  l_1_1["hxtsr.exe"], l_1_2 = l_1_2, {"appdata\\local\\packages\\microsoft.windowscommunicationsapps"}
  l_1_1["runtimebroker.exe"], l_1_2 = l_1_2, {"appdata\\local\\packages\\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\\localstate\\files\\s0\\"}
  l_1_2 = l_1_2(l_1_0)
  l_1_2 = l_1_1[l_1_2]
  return l_1_2
end

isOutlookProcess = function(l_2_0)
  -- function num : 0_1
  if l_2_0 or (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME) == nil then
    return 
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R1 in 'UnsetPending'

  if (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) == "outlook.exe" or (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) == "olk.exe" then
    (mp.set_mpattribute)("BM_OutlookProcessOlk")
    return true
  else
    -- DECOMPILER ERROR at PC26: Confused about usage of register: R1 in 'UnsetPending'

    if (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) == "msedgewebview2.exe" then
      local l_2_1 = nil
      if (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID) == nil then
        return false
      end
      local l_2_2 = nil
      if (string.lower)((mp.GetProcessCommandLine)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID))) == nil or #(string.lower)((mp.GetProcessCommandLine)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID))) <= 25 then
        return false
      end
      local l_2_3 = nil
      if (string.match)((string.lower)((string.gsub)((string.lower)((mp.GetProcessCommandLine)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID))), " ", "")), "%-%-webview%-exe%-name=olk%.exe") then
        (mp.set_mpattribute)("BM_OutlookProcessWebView")
        return true
      end
    end
  end
  do
    return false
  end
end

IsWebmailDownloadURL = function(l_3_0)
  -- function num : 0_2
  if l_3_0 == nil then
    return false
  end
  if (string.len)(l_3_0) > 34 and l_3_0:find("_task=mail&_action=get&_mbox=inbox", 1, true) ~= nil then
    return true
  end
  local l_3_1 = l_3_0:match("https?://([%w%.-]+)")
  if l_3_1 == nil then
    return false
  end
  l_3_1 = l_3_1:lower()
  local l_3_2 = (string.len)(l_3_1)
  -- DECOMPILER ERROR at PC106: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC106: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC106: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC106: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC106: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC106: Unhandled construct in 'MakeBoolean' P3

  if (l_3_2 > 11 and l_3_1:find("mail.google", 1, true) ~= nil) or l_3_2 <= 16 or l_3_2 <= 19 or l_3_2 <= 13 or l_3_2 <= 18 or l_3_2 <= 11 or l_3_2 <= 16 or l_3_2 > 23 and l_3_1:find("docs.googleusercontent.", 1, true) ~= nil then
    return true
  end
  return false
end

IsCommonFileSharingURL = function(l_4_0)
  -- function num : 0_3
  if l_4_0 == nil then
    return false
  end
  local l_4_1 = l_4_0:match("https?://([%w%.-]+)")
  if l_4_1 == nil then
    return false
  end
  l_4_1 = l_4_1:lower()
  local l_4_2 = (string.len)(l_4_1)
  -- DECOMPILER ERROR at PC55: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC55: Unhandled construct in 'MakeBoolean' P3

  if (l_4_2 > 25 and l_4_1:find("download.spaces.hightail.", 1, true) ~= nil) or l_4_2 <= 20 or l_4_2 <= 22 or l_4_2 > 14 and l_4_1:find("onedrive.live.", 1, true) ~= nil then
    return true
  end
  return false
end


