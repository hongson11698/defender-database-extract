-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000129b_luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0, l_1_1, l_1_2)
  -- function num : 0_0
  if type(l_1_1) == "table" then
    if l_1_2 == nil then
      l_1_2 = 4
    end
    return l_1_0 ~= nil and l_1_1 ~= nil and l_1_2 <= #l_1_0 and l_1_1[(string.sub)(l_1_0, -l_1_2)] ~= nil
  end
  do return l_1_1 == "" or (string.sub)(l_1_0, -(string.len)(l_1_1)) == l_1_1 end
  -- DECOMPILER ERROR: 3 unprocessed JMP targets
end

local l_0_1 = function(l_2_0, l_2_1)
  -- function num : 0_1
  do return (string.sub)(l_2_0, 1, (string.len)(l_2_1)) == l_2_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

local l_0_2 = (skip.get_contextdata)(skip.CONTEXT_DATA_SCANREASON)
if l_0_2 == 12 then
  local l_0_3 = (string.lower)((skip.get_contextdata)(32))
  if l_0_3 == "exchange server 2019" or l_0_3 == "exchange server 2016" then
    local l_0_4 = (string.lower)((skip.get_contextdata)(34))
    if l_0_1(l_0_4, "urlpath:/mapi/emsmdb") or l_0_1(l_0_4, "urlpath:/rpc/rpcproxy.dll") or l_0_1(l_0_4, "urlpath:/owa/service.svc") then
      return true
    end
  end
end
do
  if l_0_2 ~= skip.SCANREASON_ONMODIFIEDHANDLECLOSE and l_0_2 ~= skip.SCANREASON_ONOPEN and l_0_2 ~= 1 then
    return 0
  end
  if (skip.get_contextdata)(skip.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
    return 0
  end
  local l_0_5 = function(l_3_0, l_3_1)
  -- function num : 0_2
  if l_3_0 == "excel.exe" or l_3_0 == "winword.exe" or l_3_0 == "powerpnt.exe" or l_3_0 == "outlook.exe" or l_3_0 == "msaccess.exe" or l_3_0 == "mspub.exe" then
    if l_3_1:find("^\\device\\harddiskvolume%d*\\program files\\microsoft office\\root\\office") ~= nil then
      return true
    end
    if l_3_1:find("^\\device\\harddiskvolume%d*\\program files %(x86%)\\microsoft office\\root\\office") ~= nil then
      return true
    end
    if l_3_1:find("^\\device\\harddiskvolume%d*\\program files\\windowsapps\\microsoft%.office%.desktop%.") ~= nil then
      return true
    end
  end
  return false
end

  local l_0_6 = (string.lower)((skip.get_contextdata)(skip.CONTEXT_DATA_FILEPATH))
  local l_0_7 = (skip.get_contextdata)(skip.CONTEXT_DATA_PROCESS_ID)
  if l_0_7 == 4 and l_0_2 == skip.SCANREASON_ONMODIFIEDHANDLECLOSE and l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\([^\\]*)\\localstate\\rootfs\\") ~= nil and l_0_6 ~= nil and "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\([^\\]*)\\localstate\\rootfs\\" ~= nil then
    return 1
  end
  local l_0_8 = (string.lower)((skip.get_contextdata)(skip.CONTEXT_DATA_FILENAME))
  if l_0_8 == "pagefile.sys" or l_0_8 == "hiberfil.sys" or l_0_8 == "swapfile.sys" then
    if l_0_6:match("^\\device\\harddiskvolumeshadowcopy%d*$") ~= nil then
      return 1
    end
    if l_0_6:match("^\\device\\harddiskvolume%d*$") ~= nil then
      return 1
    end
  end
  local l_0_9 = (string.lower)((skip.get_contextdata)(skip.CONTEXT_DATA_PROCESSNAME))
  if l_0_9 == "rundll32.exe" or l_0_9 == "dllhost.exe" or l_0_9 == "regsvr32.exe" or l_0_9 == "cscript.exe" or l_0_9 == "jscript.exe" or l_0_9 == "cmd.exe" or l_0_9 == "curl.exe" or l_0_9 == "powershell.exe" or l_0_9 == "powershell_ise.exe" or l_0_9 == "wscript.exe" or l_0_9 == "mshta.exe" or l_0_9 == "csc.exe" or l_0_9 == "jsc.exe" or l_0_9 == "vbc.exe" then
    return 0
  end
  local l_0_10 = (string.lower)((skip.get_contextdata)(skip.CONTEXT_DATA_PROCESSDEVICEPATH))
  if l_0_2 == 1 then
    if l_0_9 == "wmiprvse.exe" and l_0_10:match("^\\device\\harddiskvolume(.*)\\windows\\") ~= nil and l_0_8:match("^dr%d*$") then
      return 1
    end
    return 0
  end
  if l_0_9 == "software_reporter_tool.exe" and l_0_10:find("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\google\\chrome\\user data\\swreporter\\") ~= nil then
    return 1
  end
  if l_0_2 == skip.SCANREASON_ONOPEN and l_0_9 == "idwutil_600.exe" and l_0_0(l_0_10, "\\program files (x86)\\idrivewindows\\cmd_dutil") then
    return 1
  end
  if l_0_2 == skip.SCANREASON_ONMODIFIEDHANDLECLOSE and not (skip.IsHipsRuleEnabled)("56a863a9-875e-4185-98a7-b882c64b5ce5") then
    if l_0_5(l_0_9, l_0_10) and not (skip.IsHipsRuleEnabled)("3b576869-a4ec-4529-8536-b80a7769e899") and not (skip.IsHipsRuleEnabled)("92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B") and not (skip.IsHipsRuleEnabled)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550") and not (skip.IsHipsRuleEnabled)("c28bf0fb-388c-438b-a41d-8688461af900") and not l_0_0(l_0_8, ".xoml") then
      return 1
    end
    if l_0_9 == "winrar.exe" or (string.sub)(l_0_9, 1, 2) == "7z" and (l_0_9 == "7z.exe" or l_0_9 == "7za.exe" or l_0_9 == "7zfm.exe" or l_0_9 == "7zg.exe" or (string.find)(l_0_9, "7z%d%d%d%d%-x64%.exe") ~= nil or (string.find)(l_0_9, "7z%d%d%d%d%.exe") ~= nil) then
      local l_0_11 = {}
      l_0_11[".exe"] = true
      l_0_11[".scr"] = true
      l_0_11[".com"] = true
      l_0_11[".bat"] = true
      l_0_11[".cmd"] = true
      l_0_11[".pif"] = true
      l_0_11[".jar"] = true
      l_0_11[".lnk"] = true
      l_0_11[".jse"] = true
      l_0_11[".vbs"] = true
      l_0_11[".vbe"] = true
      l_0_11[".wsf"] = true
      l_0_11[".hta"] = true
      l_0_11[".wsh"] = true
      l_0_11[".ps1"] = true
      local l_0_12 = {}
      l_0_12[".xls"] = true
      l_0_12.xlsx = true
      l_0_12.xlsm = true
      l_0_12.xlsb = true
      l_0_12.xltx = true
      l_0_12.xltm = true
      l_0_12[".xlt"] = true
      l_0_12.xlam = true
      l_0_12[".xla"] = true
      l_0_12[".doc"] = true
      l_0_12.docx = true
      l_0_12.docm = true
      l_0_12.dotx = true
      l_0_12.dotm = true
      l_0_12[".rtf"] = true
      l_0_12[".ppt"] = true
      l_0_12.pptm = true
      l_0_12[".pps"] = true
      l_0_12.pptx = true
      l_0_12.ppsx = true
      l_0_12[".odt"] = true
      local l_0_13 = {}
      l_0_13[".iso"] = true
      l_0_13[".img"] = true
      l_0_13[".dmg"] = true
      if not (skip.IsHipsRuleEnabled)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550") and not (skip.IsHipsRuleEnabled)("5beb7efe-fd9a-4556-801d-275e5ffc04cc") and not l_0_0(l_0_8, l_0_11) and not l_0_0(l_0_8, l_0_12) and not l_0_0(l_0_8, l_0_13) and (string.len)(l_0_6) > 25 and ((string.find)(l_0_6, "\\appdata\\local\\temp\\rar$", 1, true) ~= nil or (string.find)(l_0_6, "\\appdata\\local\\temp\\7z", 1, true) ~= nil) then
        return 1
      end
    end
    do
      if (string.find)(l_0_9, "setup", 1, true) ~= nil or (string.find)(l_0_9, "install", 1, true) ~= nil then
        return 1
      end
      if (string.find)(l_0_6, "\\program files", 1, true) ~= nil then
        if l_0_6:match("^\\device\\harddiskvolume%d*\\program files\\") ~= nil then
          return 1
        end
        if l_0_6:match("^\\device\\harddiskvolume%d*\\program files %(x86%)\\") ~= nil then
          return 1
        end
      end
      if l_0_1(l_0_6, "\\device\\mup\\") then
        return 1
      end
      if (string.find)(l_0_10, "\\programdata\\ul\\pcmark", 1, true) ~= nil then
        return 1
      end
      if (string.find)(l_0_10, "\\program files\\windowsapps\\", 1, true) ~= nil or (string.find)(l_0_10, "\\windows\\systemapps\\", 1, true) ~= nil then
        return 1
      end
      if l_0_0(l_0_9, ".tmp") then
        if l_0_0(l_0_8, ".tmp") then
          return 1
        end
        if l_0_6:match("^\\device\\harddiskvolume%d*\\program files\\") ~= nil then
          return 1
        end
        if l_0_6:match("^\\device\\harddiskvolume%d*\\program files %(x86%)\\") ~= nil then
          return 1
        end
      end
      if (string.sub)(l_0_9, 1, 4) == "npp." and (l_0_0(l_0_9, ".installer.x64.exe") or l_0_0(l_0_9, ".installer.exe")) then
        return 1
      end
      if (string.sub)(l_0_9, 1, 7) == "rstudio" and (string.find)(l_0_9, "rstudio%d%.exe") ~= nil then
        return 1
      end
      if l_0_0(l_0_8, ".html") or l_0_0(l_0_8, ".js") or l_0_0(l_0_8, ".css") then
        if (string.find)(l_0_6, "\\doc\\", 1, true) ~= nil then
          return 1
        end
        if (string.find)(l_0_6, "\\docs\\", 1, true) ~= nil then
          return 1
        end
      end
      do
        local l_0_14, l_0_15 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\")
        if l_0_14 ~= nil and l_0_15 ~= nil and l_0_14 == l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\") and l_0_15 == l_0_10 then
          return 1
        end
        if (string.sub)(l_0_9, 1, 4) == "npp." then
          if l_0_0(l_0_9, ".installer.exe") and (string.find)(l_0_6, "^\\device\\harddiskvolume%d*\\program files %(x86%)\\notepad%+%+") ~= nil then
            return 1
          end
          if l_0_0(l_0_9, ".installer.x64.exe") and (string.find)(l_0_6, "^\\device\\harddiskvolume%d*\\program files\\notepad%+%+") ~= nil then
            return 1
          end
        end
        if (l_0_0(l_0_10, "\\windows\\system32") or (string.find)(l_0_10, "\\program files\\windowsapps\\", 1, true) ~= nil) and (string.find)(l_0_6, "microsoft\\cryptneturlcache\\", 1, true) ~= nil then
          return 1
        end
        if l_0_9 == "runtimebroker.exe" and l_0_0(l_0_10, "\\windows\\system32") and (string.find)(l_0_6, "appdata\\roaming\\microsoft\\systemcertificates\\my\\certificates", 1, true) ~= nil then
          return 1
        end
        if l_0_9 == "waworkerhost.exe" then
          if (string.find)(l_0_6, "microsoft\\cryptneturlcache\\", 1, true) ~= nil then
            return 1
          end
          if l_0_8:match("^%d*$") then
            return 1
          end
        end
        if l_0_9 == "microsoft.office.web.certificatemanager.exe" and l_0_6:match("^\\device\\harddiskvolume(.*)\\programdata\\microsoft\\crypto\\rsa\\machinekeys") ~= nil then
          return 1
        end
        if l_0_9 == "pingsender.exe" and l_0_0(l_0_10, "\\program files\\mozilla firefox") and (string.find)(l_0_6, "microsoft\\cryptneturlcache\\", 1, true) ~= nil then
          return 1
        end
        if l_0_9 == "chrome.exe" then
          if l_0_0(l_0_10, "\\google\\chrome\\application") and (string.find)(l_0_6, "microsoft\\cryptneturlcache\\", 1, true) ~= nil then
            return 1
          end
          local l_0_16 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\google\\chrome\\user data")
          if l_0_6 ~= nil and l_0_16 ~= nil and l_0_16 == l_0_10:match("^\\device\\harddiskvolume(.*)\\program files %(x86%)\\google\\chrome\\application") then
            return 1
          end
        end
        do
          if l_0_9 == "msedge.exe" or l_0_9 == "msedgewebview2.exe" then
            if l_0_0(l_0_10, "\\application") and (string.find)(l_0_6, "microsoft\\cryptneturlcache\\", 1, true) ~= nil then
              return 1
            end
            local l_0_17, l_0_18 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\edge([^\\]*)\\user data")
            local l_0_20, l_0_21, l_0_22 = , l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\edge([^\\]*)\\application")
            if l_0_18 ~= nil and l_0_17 ~= nil and l_0_17 == l_0_21 and l_0_18 == l_0_22 and l_0_20 == "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\edge([^\\]*)\\application" then
              return 1
            end
            local l_0_19 = nil
            l_0_17 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\edge([^\\]*)\\application")
            if l_0_18 ~= nil and l_0_17 ~= nil and l_0_17 == l_0_21 and l_0_18 == l_0_22 and l_0_20 == l_0_19 then
              return 1
            end
            -- DECOMPILER ERROR at PC823: Overwrote pending register: R10 in 'AssignReg'

            l_0_17 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\")
            if l_0_18 ~= nil and l_0_17 ~= nil and l_0_17 == l_0_21 and l_0_18 == l_0_22 and l_0_19 ~= nil then
              return 1
            end
            -- DECOMPILER ERROR at PC840: Overwrote pending register: R10 in 'AssignReg'

            l_0_17 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\")
            if l_0_18 ~= nil and l_0_17 ~= nil and l_0_17 == l_0_21 and l_0_18 == l_0_22 and l_0_19 ~= nil then
              return 1
            end
            l_0_17 = l_0_6:match("^\\device\\harddiskvolume(.*)\\windows\\fonts\\")
            if l_0_17 ~= nil and l_0_17 == l_0_21 and l_0_22 ~= nil and l_0_19 ~= nil then
              return 1
            end
          end
          do
            -- DECOMPILER ERROR at PC878: Overwrote pending register: R10 in 'AssignReg'

            -- DECOMPILER ERROR at PC879: Overwrote pending register: R11 in 'AssignReg'

            do
              if l_0_9 == "onedrive.exe" or l_0_9 == "filecoauth.exe" or l_0_9 == "onedrivesetup.exe" or l_0_9 == "onedrivefilelauncher.exe" or l_0_9 == "onedrivestandaloneupdater.exe" then
                local l_0_23, l_0_24 = l_0_10:match(l_0_20)
                if l_0_23 ~= nil and l_0_24 ~= nil and l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\onedrive\\") == l_0_23 and l_0_6 == l_0_24 then
                  return 1
                end
              end
              if l_0_9 == "nuget.exe" and l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\.nuget\\packages\\") ~= nil and l_0_6 ~= nil then
                return 1
              end
              do
                if l_0_9 == "vlc-cache-gen.exe" then
                  local l_0_25, l_0_26 = l_0_6:match("^\\device\\harddiskvolume(.*)\\program files([^\\]*)\\videolan\\vlc")
                  if l_0_25 ~= nil and l_0_25 == l_0_10:match("^\\device\\harddiskvolume(.*)\\program files([^\\]*)\\videolan\\vlc") and l_0_26 == l_0_10 and (l_0_26 == "" or l_0_26 == " (x86)" or l_0_26 == " (arm)") then
                    return 1
                  end
                end
                do
                  if l_0_9 == "installer.exe" then
                    local l_0_27, l_0_28 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\roaming\\zoom\\")
                    if l_0_27 ~= nil and l_0_28 ~= nil and l_0_27 == l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\") and l_0_28 == l_0_10 then
                      return 1
                    end
                  end
                  if (string.sub)(l_0_9, 1, 5) == "gimp-" and l_0_0(l_0_9, "-setup.tmp") and l_0_6:match("^\\device\\harddiskvolume(.*)\\program files\\gimp 2") ~= nil then
                    return 1
                  end
                  do
                    if (l_0_9 == "setup.exe" or l_0_9 == "un_a.exe") and l_0_2 == skip.SCANREASON_ONOPEN then
                      local l_0_29, l_0_30 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\")
                      -- DECOMPILER ERROR at PC989: Unhandled construct in 'MakeBoolean' P1

                      if l_0_29 ~= nil and l_0_30 ~= nil and l_0_29 == l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\") and l_0_30 == l_0_10 then
                        return 1
                      end
                    end
                    if l_0_29 == nil then
                      l_0_29 = l_0_6:match("^\\device\\harddiskvolume(.*)\\program files\\mozilla ")
                    end
                    if l_0_29 == nil then
                      l_0_29 = l_0_6:match("^\\device\\harddiskvolume(.*)\\program files %(x86%)\\mozilla ")
                    end
                    if l_0_29 ~= nil and l_0_29 == l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp") and l_0_10 ~= nil then
                      return 1
                    end
                    if l_0_5(l_0_9, l_0_10) == true then
                      if l_0_6:find("^\\device\\harddiskvolume%d*\\users\\[^\\]*\\appdata\\local\\packages") ~= nil then
                        return 1
                      end
                      if l_0_6:find("^\\device\\harddiskvolume%d*\\users\\[^\\]*\\appdata\\local\\temp\\photocache") ~= nil then
                        return 1
                      end
                      if l_0_6:find("^\\device\\harddiskvolume%d*\\users\\[^\\]*\\appdata\\local\\microsoft\\office") ~= nil then
                        return 1
                      end
                      if l_0_6:find("^\\device\\harddiskvolume%d*\\users\\[^\\]*\\appdata\\local\\microsoft\\msipc") ~= nil then
                        return 1
                      end
                      if l_0_6:find("microsoft\\cryptneturlcache\\", 1, true) ~= nil then
                        return 1
                      end
                    end
                    if l_0_9 == "officeclicktorun.exe" then
                      do
                        if l_0_10:match("^\\device\\harddiskvolume(.*)\\program files\\common files\\microsoft shared\\clicktorun") == nil then
                          local l_0_31 = l_0_10:match("^\\device\\harddiskvolume(.*)\\program files %(x86%)\\common files\\microsoft shared\\clicktorun")
                        end
                        -- DECOMPILER ERROR at PC1068: Confused about usage of register: R9 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC1097: Confused about usage of register: R9 in 'UnsetPending'

                        if (((l_0_6:match("^\\device\\harddiskvolume(.*)\\program files\\common files\\microsoft shared\\clicktorun\\updates") == nil and l_0_6:match("^\\device\\harddiskvolume(.*)\\program files %(x86%)\\common files\\microsoft shared\\clicktorun\\updates") ~= nil) or l_0_6:match("^\\device\\harddiskvolume(.*)\\programdata\\microsoft\\clicktorun") == nil) and l_0_6:match("^\\device\\harddiskvolume(.*)\\program files\\microsoft office") ~= nil) or l_0_6:match("^\\device\\harddiskvolume(.*)\\program files %(x86%)\\microsoft office") == l_0_31 then
                          return 1
                        end
                        if l_0_0(l_0_8, ".pf") then
                          if l_0_7 == 4 then
                            return 1
                          end
                          if l_0_6:match("^\\device\\harddiskvolume(.*)\\windows\\prefetch") ~= nil then
                            if l_0_1(l_0_8, l_0_9) then
                              return 1
                            end
                            if l_0_10:match("^\\device\\harddiskvolume(.*)\\windows\\") ~= nil then
                              return 1
                            end
                          end
                        end
                        if l_0_0(l_0_8, ".log") or l_0_0(l_0_8, ".log1") or l_0_0(l_0_8, ".log2") or l_0_0(l_0_8, ".cat") or l_0_0(l_0_8, ".sqm") or l_0_0(l_0_8, ".etl") or l_0_0(l_0_8, ".db") or l_0_0(l_0_8, ".db3") or l_0_0(l_0_8, ".db-wal") or l_0_0(l_0_8, ".db3-wal") or l_0_0(l_0_8, ".db-journal") or l_0_0(l_0_8, ".db3-journal") or l_0_0(l_0_8, ".bin") or l_0_0(l_0_8, ".dat") or l_0_0(l_0_8, ".dmp") or l_0_0(l_0_8, ".data") or l_0_0(l_0_8, ".mui") or l_0_0(l_0_8, ".edb") or l_0_0(l_0_8, ".chk") or l_0_0(l_0_8, ".ini") or l_0_0(l_0_8, ".evtx") or l_0_0(l_0_8, ".manifest") or l_0_0(l_0_8, ".hve") or l_0_0(l_0_8, ".tmp.xml") or l_0_0(l_0_8, ".tmp.werinternalmetadata.xml") or l_0_0(l_0_8, ".hdmp") or l_0_0(l_0_8, ".dmp") or l_0_0(l_0_8, ".wer") or l_0_0(l_0_8, ".sdb") or l_0_0(l_0_8, ".tmp.appcompat.txt") then
                          do
                            if l_0_7 == 4 then
                              local l_0_32 = (skip.get_contextdata)(39)
                              if not l_0_32 or l_0_32 == "" then
                                return 1
                              end
                            end
                            if l_0_9 == "svchost.exe" and l_0_8 == "gpt.ini" and l_0_6:match("^\\device\\mup\\") then
                              return 0
                            end
                            if l_0_9 == "processhacker.exe" then
                              return 0
                            end
                            if l_0_10:match("^\\device\\harddiskvolume(.*)\\windows\\system32") ~= nil or l_0_10:match("^\\\\%?\\volume{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}\\windows\\system32") ~= nil then
                              return 1
                            end
                            if l_0_9 == "firefox.exe" then
                              if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\([^\\]*)\\mozilla\\firefox\\") ~= nil and l_0_6 ~= nil and "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\([^\\]*)\\mozilla\\firefox\\" ~= nil then
                                return 1
                              end
                              if l_0_10:match("^\\device\\harddiskvolume(.*)\\program files\\mozilla firefox") ~= nil then
                                if l_0_6:match("^\\device\\harddiskvolume(.*)\\program files\\mozilla firefox") ~= nil then
                                  return 1
                                end
                                if l_0_0(l_0_8, ".mui") or l_0_0(l_0_8, ".ttf") or l_0_0(l_0_8, ".icm") or l_0_0(l_0_8, ".db") or l_0_0(l_0_8, ".bin") then
                                  return 1
                                end
                              end
                            end
                            local l_0_33 = (string.find)(l_0_9, ".", 1, true)
                            if l_0_33 == nil and (l_0_9 == "cp" or l_0_9 == "dash" or l_0_9 == "node" or l_0_9 == "npm" or l_0_9 == "grep" or l_0_9 == "cat" or l_0_9 == "dpkg" or l_0_9 == "dpkg-query" or l_0_9 == "sudo" or l_0_9 == "apt" or l_0_9 == "store" or l_0_9 == "apt-extracttemplates" or l_0_9 == "perl" or l_0_9 == "systemd-hwdb" or l_0_9 == "ldconfig" or l_0_9 == "update-alternatives") then
                              local l_0_34, l_0_35, l_0_36 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\([^\\]*)\\localstate\\rootfs")
                              if l_0_34 ~= nil and l_0_35 ~= nil and l_0_36 ~= nil then
                                local l_0_37, l_0_38 = l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\([^\\]*)\\localstate\\rootfs\\usr\\bin")
                                if ("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\([^\\]*)\\localstate\\rootfs\\usr\\bin" ~= nil or l_0_34 == l_0_37) and l_0_35 == l_0_38 and l_0_36 == R15_PC1480 then
                                  return 1
                                end
                              end
                            end
                            do
                              do
                                if l_0_9 == "firefox.exe" or l_0_9 == "gimp-2.8.exe" or l_0_9 == "soffice.bin" or l_0_9 == "chrome.exe" then
                                  local l_0_39, l_0_40 = l_0_6:match("^\\device\\harddiskvolume(.*)\\programdata\\ul\\pcmark 10\\chops\\dlc\\([^\\]*)\\")
                                  -- DECOMPILER ERROR at PC1503: Overwrote pending register: R13 in 'AssignReg'

                                  -- DECOMPILER ERROR at PC1504: Overwrote pending register: R14 in 'AssignReg'

                                  if l_0_39 ~= nil and l_0_40 ~= nil then
                                    if l_0_39 == l_0_10:match(l_0_38) or l_0_40 == l_0_37 then
                                      return 1
                                    end
                                    if l_0_10:match("^\\device\\harddiskvolume(.*)\\programdata\\ul\\pcmark 10\\tmp\\") == l_0_39 then
                                      return 1
                                    end
                                  end
                                end
                                do
                                  if l_0_9 == "code.exe" then
                                    local l_0_41, l_0_42 = l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\programs\\microsoft vs code")
                                    if l_0_41 ~= nil and l_0_42 ~= nil then
                                      if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\roaming\\code") == l_0_41 and l_0_6 == l_0_42 then
                                        return 1
                                      end
                                      -- DECOMPILER ERROR at PC1541: Overwrote pending register: R15 in 'AssignReg'

                                      if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\programs\\microsoft vs code") == l_0_41 and R13_PC1548 == l_0_42 then
                                        return 1
                                      end
                                    end
                                  end
                                  do
                                    if l_0_9 == "code - insiders.exe" then
                                      local l_0_43, l_0_44 = l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\programs\\microsoft vs code insiders")
                                      if l_0_43 ~= nil and l_0_44 ~= nil then
                                        if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\roaming\\code") == l_0_43 and R13_PC1548 == l_0_44 then
                                          return 1
                                        end
                                        -- DECOMPILER ERROR at PC1573: Overwrote pending register: R15 in 'AssignReg'

                                        -- DECOMPILER ERROR at PC1576: Overwrote pending register: R13 in 'AssignReg'

                                        if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\programs\\microsoft vs code insiders") == l_0_43 and R13_PC1548 == l_0_44 then
                                          return 1
                                        end
                                      end
                                    end
                                    do
                                      if l_0_9 == "teams.exe" then
                                        local l_0_45, l_0_46 = l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\teams")
                                        -- DECOMPILER ERROR at PC1596: Overwrote pending register: R13 in 'AssignReg'

                                        if l_0_45 ~= nil and l_0_46 ~= nil then
                                          if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\roaming\\microsoft\\teams") == l_0_45 and R13_PC1548 == l_0_46 then
                                            return 1
                                          end
                                          -- DECOMPILER ERROR at PC1605: Overwrote pending register: R15 in 'AssignReg'

                                          if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\teams") == l_0_45 and R15_PC1480 == l_0_46 then
                                            return 1
                                          end
                                        end
                                      end
                                      if l_0_9 == "dllhost.exe" and l_0_0(l_0_10, "\\windows\\system32") then
                                        if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\microsoftwindows.client.cbs_cw5n1h2txyewy\\appdata\\cachestorage") ~= nil and l_0_6 ~= nil then
                                          return 1
                                        end
                                        -- DECOMPILER ERROR at PC1633: Overwrote pending register: R13 in 'AssignReg'

                                        if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\microsoftwindows.client_cw5n1h2txyewy\\appdata\\cachestorage") ~= nil and R11_PC1642 ~= nil then
                                          return 1
                                        end
                                      end
                                      do
                                        if l_0_9 == "_conda.exe" or l_0_9 == "python.exe" or l_0_9 == "pythonw.exe" then
                                          local l_0_47, l_0_48 = l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\miniconda%d"), R11_PC1642
                                          -- DECOMPILER ERROR at PC1664: Overwrote pending register: R13 in 'AssignReg'

                                          if l_0_47 ~= nil and l_0_48 ~= nil and l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\miniconda%d\\") == l_0_47 and R13_PC1548 == l_0_48 then
                                            return 1
                                          end
                                          -- DECOMPILER ERROR at PC1673: Overwrote pending register: R13 in 'AssignReg'

                                          -- DECOMPILER ERROR at PC1676: Overwrote pending register: R11 in 'AssignReg'

                                          l_0_47 = l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\anaconda%d")
                                          -- DECOMPILER ERROR at PC1684: Overwrote pending register: R13 in 'AssignReg'

                                          if l_0_47 ~= nil and l_0_48 ~= nil and l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\anaconda%d\\") == l_0_47 and R13_PC1548 == l_0_48 then
                                            return 1
                                          end
                                          -- DECOMPILER ERROR at PC1693: Overwrote pending register: R13 in 'AssignReg'

                                          l_0_47 = l_0_10:match("^\\device\\harddiskvolume(.*)\\programdata\\miniconda%d")
                                          -- DECOMPILER ERROR at PC1700: Overwrote pending register: R13 in 'AssignReg'

                                          -- DECOMPILER ERROR at PC1705: Overwrote pending register: R13 in 'AssignReg'

                                          if l_0_47 ~= nil and l_0_6:match("^\\device\\harddiskvolume(.*)\\programdata\\miniconda%d") == l_0_47 then
                                            return R13_PC1548
                                          end
                                          -- DECOMPILER ERROR at PC1707: Overwrote pending register: R13 in 'AssignReg'

                                          l_0_47 = l_0_10:match("^\\device\\harddiskvolume(.*)\\programdata\\anaconda%d")
                                          -- DECOMPILER ERROR at PC1714: Overwrote pending register: R13 in 'AssignReg'

                                          -- DECOMPILER ERROR at PC1719: Overwrote pending register: R13 in 'AssignReg'

                                          if l_0_47 ~= nil and l_0_6:match("^\\device\\harddiskvolume(.*)\\programdata\\anaconda%d") == l_0_47 then
                                            return R13_PC1548
                                          end
                                        end
                                        -- DECOMPILER ERROR at PC1724: Overwrote pending register: R11 in 'AssignReg'

                                        if l_0_9 == "machinelocalwatchdog.exe" and (l_0_8:match("%w*")) ~= nil then
                                          return 1
                                        end
                                        if l_0_9 == "savservice.exe" and (l_0_8:match("%w*")) ~= nil then
                                          return 1
                                        end
                                        if (l_0_9 == "postgres.exe" or l_0_9 == "postgresinstanceagentrunnerhost.exe") and (l_0_8:match("%w*")) ~= nil then
                                          return 1
                                        end
                                        do
                                          if l_0_9 == "javaw.exe" or l_0_9 == "java.exe" or l_0_9 == "javac.exe" then
                                            local l_0_49, l_0_50 = l_0_10:match("^\\device\\harddiskvolume(.*)\\(.*)\\java\\jdk([^\\]*)\\bin")
                                            -- DECOMPILER ERROR at PC1769: Overwrote pending register: R13 in 'AssignReg'

                                            -- DECOMPILER ERROR at PC1772: Overwrote pending register: R13 in 'AssignReg'

                                            -- DECOMPILER ERROR at PC1775: Overwrote pending register: R13 in 'AssignReg'

                                            -- DECOMPILER ERROR at PC1778: Overwrote pending register: R13 in 'AssignReg'

                                            -- DECOMPILER ERROR at PC1779: Overwrote pending register: R15 in 'AssignReg'

                                            if l_0_49 ~= R13_PC1548 and l_0_50 ~= R13_PC1548 and "^\\device\\harddiskvolume(.*)\\(.*)\\java\\jdk([^\\]*)\\bin" ~= R13_PC1548 then
                                              R13_PC1548 = R13_PC1548(l_0_6, R15_PC1480)
                                              -- DECOMPILER ERROR at PC1785: Overwrote pending register: R15 in 'AssignReg'

                                              if R13_PC1548 == l_0_49 and l_0_6 == l_0_50 then
                                                return R15_PC1480
                                              end
                                              -- DECOMPILER ERROR at PC1787: Overwrote pending register: R15 in 'AssignReg'

                                              R15_PC1480 = R15_PC1480(l_0_6, "^\\device\\harddiskvolume(.*)\\(.*)\\java\\gwdlso\\")
                                              if R15_PC1480 == l_0_49 and l_0_6 == l_0_50 then
                                                return 1
                                              end
                                            end
                                          end
                                          do
                                            if l_0_9 == "svchost.exe" or l_0_9 == "lsass.exe" or l_0_9 == "services.exe" or l_0_9 == "taskhostw.exe" then
                                              local l_0_51 = (l_0_10:match("^\\\\%?\\volume(.*)\\windows\\system32"))
                                              if l_0_51 ~= nil then
                                                if l_0_6:match(R13_PC1548) == l_0_51 then
                                                  return 1
                                                end
                                                -- DECOMPILER ERROR at PC1820: Overwrote pending register: R13 in 'AssignReg'

                                                -- DECOMPILER ERROR at PC1825: Overwrote pending register: R13 in 'AssignReg'

                                                if l_0_6:match("^\\device\\vhdharddisk(.*)\\programdata") == l_0_51 then
                                                  return R13_PC1548
                                                end
                                                -- DECOMPILER ERROR at PC1827: Overwrote pending register: R13 in 'AssignReg'

                                                R13_PC1548 = (R13_PC1548(l_0_6, R15_PC1480))
                                                if R13_PC1548 ~= nil then
                                                  return 1
                                                end
                                                -- DECOMPILER ERROR at PC1835: Overwrote pending register: R15 in 'AssignReg'

                                                -- DECOMPILER ERROR at PC1838: Overwrote pending register: R15 in 'AssignReg'

                                                -- DECOMPILER ERROR at PC1841: Overwrote pending register: R15 in 'AssignReg'

                                                if (l_0_6:match("^\\device\\harddiskvolume(.*)\\programdata")) ~= R15_PC1480 then
                                                  return R15_PC1480
                                                end
                                              end
                                            end
                                            do
                                              if l_0_9 == "fusion360.exe" then
                                                local l_0_52, l_0_53 = l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\autodesk\\webdeploy\\production")
                                                if l_0_52 ~= nil and l_0_53 ~= nil then
                                                  if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\autodesk\\webdeploy\\production\\") == l_0_52 and R13_PC1548 == l_0_53 then
                                                    return 1
                                                  end
                                                  -- DECOMPILER ERROR at PC1864: Overwrote pending register: R15 in 'AssignReg'

                                                  -- DECOMPILER ERROR at PC1867: Overwrote pending register: R13 in 'AssignReg'

                                                  if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\fusionstreamer\\") == l_0_52 and R13_PC1548 == l_0_53 then
                                                    return 1
                                                  end
                                                end
                                              end
                                              return 0
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

