-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1cfd7599f7ed3\0x000001fc_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
local l_0_1 = (mp.GetParentProcInfo)()
if l_0_1 ~= nil then
  local l_0_2 = (string.lower)(l_0_1.image_path)
  local l_0_3 = l_0_2:match("([^\\]+)$")
  local l_0_4 = false
  local l_0_5 = false
  l_0_5 = (MpCommon.StringRegExpSearch)("(tomcat|nginx|httpd|w3wp|sqlservr|oracle|msmdsrv|msdtssrvr|mysql).exe", l_0_3)
  l_0_0.ParentPath = l_0_3
  if l_0_5 == true then
    l_0_4 = true
  end
  if not l_0_4 then
    l_0_1 = (mp.GetParentProcInfo)(l_0_1.ppid)
    if l_0_1 ~= nil then
      l_0_2 = (string.lower)(l_0_1.image_path)
      l_0_3 = l_0_2:match("([^\\]+)$")
      l_0_5 = false
      l_0_5 = (MpCommon.StringRegExpSearch)("(tomcat|nginx|httpd|w3wp|sqlservr|oracle|msmdsrv|msdtssrvr|mysql).exe", l_0_3)
      if l_0_5 == true then
        l_0_4 = true
        l_0_0.GParentPath = l_0_3
      end
    end
  end
  if not l_0_4 then
    return mp.CLEAN
  end
  local l_0_6 = (mp.hstr_full_log)()
  if l_0_6 ~= nil and (l_0_6[12]).matched then
    l_0_0.DetectorId = "73dbc64a-cf18-11ed-afa1-0242ac120002"
  end
  local l_0_7 = (mp.GetScannedPPID)()
  if l_0_7 == "" or l_0_7 == nil then
    return mp.CLEAN
  end
  local l_0_8 = (mp.GetProcessCommandLine)(l_0_7)
  local l_0_9 = "((?i)http[s]?://[^\\\"\\s]+)"
  if l_0_6 and (l_0_6[1]).matched then
    local l_0_10, l_0_11 = (MpCommon.StringRegExpSearch)(l_0_9, l_0_8)
    if l_0_10 then
      l_0_10 = (MpCommon.StringRegExpSearch)(".(exe|dll|ps1|bat|cmd|rar)$", l_0_11)
      if l_0_10 then
        l_0_0.uri = l_0_11
        set_research_data("Evidence", (MpCommon.Base64Encode)(safeJsonSerialize(l_0_0)), false)
        if not l_0_0.GParentPath then
          do
            local l_0_12 = l_0_0.ParentPath .. "|" .. l_0_11
            ;
            (MpCommon.AddProcessAttribute)(l_0_7, "PFApp_SusDrop", l_0_12, true)
            do return mp.INFECTED end
            l_0_10 = (MpCommon.StringRegExpSearch)(".(xml|csv|bak)", l_0_11)
            if l_0_10 then
              return mp.CLEAN
            end
            local l_0_13 = {}
            l_0_13.SIG_CONTEXT = "CMD"
            l_0_13.FILELESS = "true"
            l_0_13.CMDLINE_URL = "true"
            local l_0_14 = SafeGetUrlReputation
            do
              local l_0_15 = {}
              -- DECOMPILER ERROR at PC155: No list found for R14 , SetList fails

              -- DECOMPILER ERROR at PC156: Overwrote pending register: R15 in 'AssignReg'

              l_0_14 = l_0_14(l_0_15, l_0_11, false, 2000)
              if l_0_14 then
                l_0_15 = l_0_14.urls
                l_0_15 = l_0_15[l_0_11]
                if l_0_15 then
                  l_0_15 = l_0_14.urls
                  l_0_15 = l_0_15[l_0_11]
                  l_0_15 = l_0_15.determination
                  if l_0_15 == 1 then
                    l_0_15 = l_0_14.urls
                    l_0_15 = l_0_15[l_0_11]
                    l_0_15 = l_0_15.confidence
                    if l_0_15 >= 80 then
                      l_0_15 = mp
                      l_0_15 = l_0_15.CLEAN
                      return l_0_15
                    end
                  end
                end
              end
              if l_0_14 then
                l_0_15 = l_0_14.urls
                l_0_15 = l_0_15[l_0_11]
                if l_0_15 then
                  l_0_15 = l_0_14.urls
                  l_0_15 = l_0_15[l_0_11]
                  l_0_15 = l_0_15.confidence
                  if l_0_15 >= 60 then
                    l_0_0.uri = l_0_11
                    l_0_15 = l_0_14.urls
                    l_0_15 = l_0_15[l_0_11]
                    l_0_15 = l_0_15.confidence
                    l_0_0.confidence = l_0_15
                    l_0_15 = l_0_14.urls
                    l_0_15 = l_0_15[l_0_11]
                    l_0_15 = l_0_15.determination
                    l_0_0.determination = l_0_15
                    l_0_15 = set_research_data
                    l_0_15("Evidence", (MpCommon.Base64Encode)(safeJsonSerialize(l_0_0)), false)
                    l_0_15 = mp
                    l_0_15 = l_0_15.INFECTED
                    return l_0_15
                  end
                end
              end
              return mp.CLEAN
            end
          end
        end
      end
    end
  end
end

