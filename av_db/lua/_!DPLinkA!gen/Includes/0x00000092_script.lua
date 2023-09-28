-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!DPLinkA!gen\Includes\0x00000092_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("SCRIPT:PowerShell") and not (mp.get_mpattribute)("SCRIPT:WmicString") and not (mp.get_mpattribute)("SCRIPT:BitsadminString") and not (mp.get_mpattribute)("SCRIPT:MsWorkflowCompilerString") and not (mp.get_mpattribute)("SCRIPT:MshtaString") and not (mp.get_mpattribute)("SCRIPT:CertutilString") and not (mp.get_mpattribute)("SCRIPT:CmstpString") and not (mp.get_mpattribute)("SCRIPT:CscString") and not (mp.get_mpattribute)("SCRIPT:CmdkeyString") and not (mp.get_mpattribute)("SCRIPT:SchtasksString") and not (mp.get_mpattribute)("SCRIPT:StringCmdExe") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 ~= nil and l_0_0:len() > 18 and (string.sub)(l_0_0, -18) == ".settingcontent-ms" then
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
  local l_0_2 = {}
  l_0_2["outlook.exe"] = ""
  l_0_2["iexplore.exe"] = ""
  l_0_2["browser_broker.exe"] = ""
  l_0_2["firefox.exe"] = ""
  l_0_2["chrome.exe"] = ""
  l_0_2["winword.exe"] = ""
  l_0_2["powerpnt.exe"] = ""
  l_0_2["excel.exe"] = ""
  l_0_2["acrord32.exe"] = ""
  local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if (l_0_2[l_0_3] or isOutlookProcess(l_0_3)) and l_0_1 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    return mp.INFECTED
  end
  if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and l_0_1 == mp.SCANREASON_ONOPEN then
    local l_0_4 = (mp.GetMOTWZone)()
    if l_0_4 == 3 or l_0_4 == 4 then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

