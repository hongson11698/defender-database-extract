-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d07b33ed07565\0x0000022b_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
local l_0_1 = false
if (this_sigattrlog[19]).matched then
  if (this_sigattrlog[19]).reg_block_src ~= bm.BM_REG_BLOCK_TAMPER_PROTECTION or not (this_sigattrlog[19]).reg_block_usermode then
    return mp.CLEAN
  end
  l_0_0.type = "BM_REG_BLOCK"
  l_0_0.event = (this_sigattrlog[19]).utf8p1
else
  if (this_sigattrlog[20]).matched then
    if (this_sigattrlog[20]).reg_block_src ~= bm.BM_REG_BLOCK_TAMPER_PROTECTION or not (this_sigattrlog[20]).reg_block_usermode then
      return mp.CLEAN
    end
    l_0_0.type = "BM_REG_BLOCK"
    l_0_0.event = (this_sigattrlog[20]).utf8p1
  else
    if (this_sigattrlog[25]).matched then
      l_0_0.type = "BM_Exclusion"
      l_0_0.event = (this_sigattrlog[25]).utf8p1
    else
      if (this_sigattrlog[26]).matched then
        l_0_0.type = "BM_Exclusion"
        l_0_0.event = (this_sigattrlog[26]).utf8p1
      else
        if (this_sigattrlog[28]).matched then
          l_0_0.type = "BM_Exclusion_Wide"
          l_0_0.event = (this_sigattrlog[28]).utf8p1
        else
          if (this_sigattrlog[27]).matched then
            l_0_0.type = "BM_FW"
            l_0_0.event = (this_sigattrlog[27]).utf8p1
          else
            if (this_sigattrlog[21]).matched then
              l_0_0.type = "BM_REG_IGNORE"
              l_0_0.event = (this_sigattrlog[21]).utf8p1
            else
              if (this_sigattrlog[22]).matched then
                l_0_0.type = "BM_REG_IGNORE"
                l_0_0.event = (this_sigattrlog[22]).utf8p1
              else
                if (this_sigattrlog[23]).matched then
                  l_0_0.type = "BM_REG_IGNORE"
                  l_0_0.event = (this_sigattrlog[23]).utf8p1
                else
                  if (this_sigattrlog[24]).matched then
                    l_0_0.type = "BM_REG_IGNORE"
                    l_0_0.event = (this_sigattrlog[24]).utf8p1
                  else
                    l_0_1 = true
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
if l_0_1 then
  for l_0_5 = mp.SIGATTR_LOG_SZ, 1, -1 do
    local l_0_6 = sigattr_tail[l_0_5]
    if l_0_6.matched then
      if l_0_6.attribute == 16407 and l_0_6.utf8p2 then
        local l_0_7, l_0_8 = (MpCommon.StringRegExpSearch)("Trojan:Win32/MpTamper(SrvDisableAV|BlockNewFirewall|DisableFeatureWd|SvcCfg|BulkExcl|SvcCfg|SysAdmin|SrvStop|PsExec)", l_0_6.utf8p2)
        if l_0_7 then
          l_0_0.type = "CMD"
          l_0_0.event = l_0_6.utf8p2
          break
        end
      else
        do
          if l_0_6.attribute == 16472 and l_0_0.utf8p1 then
            local l_0_9, l_0_10 = (MpCommon.StringRegExpSearch)("Trojan:Win32/MpTamper(SrvDisableAV|MpTamperDisableFeatureWd|MpTamperBulkExcl)", l_0_6.utf8p2)
            if l_0_9 then
              do
                do
                  l_0_0.type = "CMD"
                  l_0_0.event = l_0_6.utf8p2
                  do break end
                  -- DECOMPILER ERROR at PC190: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC190: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC190: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC190: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC190: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC190: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC190: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC190: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC190: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC190: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
        end
      end
    end
  end
end
local l_0_11 = false
local l_0_12 = false
local l_0_13 = {}
local l_0_14 = (bm.get_current_process_startup_info)()
l_0_13.pid = l_0_14.ppid
l_0_13.imagePath = (bm.get_imagepath)()
l_0_13.friendly = (MpCommon.IsFriendlyProcess)(l_0_14.ppid)
l_0_13.cmdline = l_0_14.commandline or ""
l_0_13.cmdline = (string.lower)(l_0_13.cmdline)
if not l_0_13.friendly then
  l_0_12 = true
end
if (string.find)(l_0_13.cmdline, ".bat", 1, true) or (string.find)(l_0_13.cmdline, ".ps1", 1, true) then
  l_0_11 = true
end
l_0_0.procInfo = l_0_13
local l_0_15, l_0_16 = (bm.get_process_relationships)()
local l_0_17 = {}
if l_0_15 then
  for l_0_21,l_0_22 in ipairs(l_0_15) do
    local l_0_23 = {}
    if l_0_22.ppid then
      l_0_23.ppid = l_0_22.ppid
      l_0_23.imagePath = l_0_22.image_path or ""
      l_0_23.friendly = (MpCommon.IsFriendlyProcess)(l_0_22.ppid)
      if not l_0_23.friendly then
        l_0_12 = true
      end
      l_0_23.cmdline = (string.lower)((mp.GetProcessCommandLine)(l_0_22.ppid) or "")
      if (string.find)(l_0_23.cmdline, ".bat", 1, true) or (string.find)(l_0_23.cmdline, ".ps1", 1, true) then
        l_0_11 = true
      end
      if l_0_22.reason == bm.RELATIONSHIP_CREATED then
        l_0_23.reason = "CREATED"
      else
        if l_0_22.reason == bm.RELATIONSHIP_INJECTION then
          l_0_23.reason = "INJECTION"
        end
      end
      ;
      (table.insert)(l_0_17, l_0_23)
    end
  end
end
do
  l_0_0.parents = l_0_17
  local l_0_24 = {}
  l_0_24.BM_Exclusion = 4
  l_0_24.BM_REG_IGNORE = 50
  l_0_24.BM_REG_BLOCK = 50
  l_0_24.BM_Exclusion_Wide = 50
  l_0_24.BM_FW = 100
  l_0_24.CMD = 50
  l_0_0.weight = l_0_24[l_0_0.type]
  l_0_0.event = (string.lower)(l_0_0.event)
  local l_0_25 = {}
  l_0_25["reg.exe"] = 1
  l_0_25["cmd.exe"] = 1
  l_0_25["powershell.exe"] = 0
  l_0_25["svchost.exe"] = 0
  l_0_25.default = 1
  if l_0_0.type == "BM_Exclusion" then
    local l_0_26 = l_0_0.event
    local l_0_27 = 3600
    local l_0_28 = 100
    local l_0_29 = "exclusion_events"
    if IsKeyInRollingQueue(l_0_29, l_0_26, true) then
      return mp.CLEAN
    end
    AppendToRollingQueue(l_0_29, l_0_26, 1, l_0_27, l_0_28)
    if (string.find)(l_0_0.event, "exclusions\\paths", 1, true) then
      l_0_0.type = "BM_Exclusion_Path"
    else
      if (string.find)(l_0_0.event, "exclusions\\extensions", 1, true) then
        l_0_0.type = "BM_Exclusion_Extension"
      else
        if (string.find)(l_0_0.event, "exclusions\\process", 1, true) then
          l_0_0.type = "BM_Exclusion_Process"
        else
          l_0_0.type = "BM_Exclusion_IP"
        end
      end
    end
    local l_0_30 = l_0_13.pid .. l_0_13.imagePath
    local l_0_31 = 3600
    local l_0_32 = 100
    local l_0_33 = "exclusion_events_pid"
    local l_0_34 = GetRollingQueueKeyValue(l_0_33, l_0_30)
    if l_0_34 then
      AppendToRollingQueue(l_0_33, l_0_30, l_0_34 + 1, l_0_31, l_0_32)
    else
      AppendToRollingQueue(l_0_33, l_0_30, 1, l_0_31, l_0_32)
      l_0_34 = 0
    end
    local l_0_35, l_0_36 = (MpCommon.StringRegExpSearch)("(documents|downloads|pictures|music|videos)$|(\\w:(\\\\*)?\\*?%?$)", l_0_0.event)
    if l_0_35 then
      l_0_0.weight = l_0_24.BM_Exclusion * 10
    end
    if (l_0_0.event):find("(%w+%.%w+)$") or (l_0_0.event):find("(%.%w+)$") then
      l_0_35 = (MpCommon.StringRegExpSearch)(".(exe|dll|ps1|bat|sys)$", l_0_0.event)
      if not l_0_35 then
        l_0_0.weight = 0
      end
    end
    l_0_0.weight = l_0_24.BM_Exclusion / (l_0_34 + 1)
    local l_0_37 = (l_0_13.imagePath):match("(%w+%.exe)$")
    if not l_0_25[l_0_37] then
      do
        l_0_0.weight = l_0_0.weight * l_0_25.default
        if l_0_0.weight == 0 then
          return mp.CLEAN
        end
        local l_0_38 = {}
        l_0_38.disablearchivescanning = 4
        l_0_38["threatseveritydefaultaction\\2"] = 8
        l_0_38.disablescriptscanning = 20
        l_0_38["5"] = 33
        l_0_38["4"] = 33
        l_0_38.disableroutinelytakingaction = 50
        local l_0_39 = {}
        l_0_39.disableantispyware = 5
        l_0_39.disableinformationprotectioncontrol = 6
        l_0_39.disablerawwritenotification = 6
        l_0_39.disablerealtimemonitoring = 7
        l_0_39.spynetreporting = 7
        l_0_39.disablebehaviormonitoring = 8
        l_0_39.disableintrusionpreventionsystem = 14
        l_0_39.disableioavprotection = 16
        l_0_39.disablescriptscanning = 50
        l_0_39.disableonaccessprotection = 50
        l_0_39.disablescanonrealtimeenable = 50
        if l_0_0.type == "BM_REG_BLOCK" or l_0_0.type == "BM_REG_IGNORE" then
          local l_0_40 = l_0_0.event
          local l_0_41 = 3600
          local l_0_42 = 100
          local l_0_43 = "reg_events"
          if IsKeyInRollingQueue(l_0_43, l_0_40, true) then
            return mp.CLEAN
          end
          -- DECOMPILER ERROR at PC526: Overwrote pending register: R21 in 'AssignReg'

          AppendToRollingQueue(l_0_43, l_0_40, 1, l_0_36, l_0_42)
          local l_0_44 = 0
          local l_0_45 = GetRollingQueueKeys(l_0_43)
          if l_0_45 then
            l_0_44 = #l_0_45
          end
          if l_0_44 <= 1 then
            local l_0_46 = (l_0_0.event):match("\\\\(%w+)")
            if l_0_0.type == "BM_REG_BLOCK" then
              if not l_0_38[l_0_46] then
                l_0_0.weight = l_0_24.BM_REG_BLOCK
                if l_0_0.type == "BM_REG_IGNORE" then
                  if not l_0_39[l_0_46] then
                    do
                      l_0_0.weight = l_0_24.BM_REG_IGNORE
                      if l_0_11 or l_0_12 then
                        l_0_0.weight = l_0_0.weight + 10
                      end
                      local l_0_47 = {}
                      l_0_47[20] = "L"
                      l_0_47[60] = "M"
                      l_0_47[80] = "H"
                      l_0_47[100] = "HP"
                      local l_0_48 = {}
                      l_0_48[20] = "L"
                      l_0_48[60] = "M"
                      l_0_48[80] = "H"
                      l_0_48[100] = "HP"
                      local l_0_49 = "TamperingTracking"
                      local l_0_50 = 3600
                      local l_0_51 = 100
                      local l_0_52 = safeJsonSerialize(l_0_0)
                      AppendToRollingQueue(l_0_49, l_0_52, l_0_0.weight, l_0_50, l_0_51)
                      local l_0_53 = reportSessionInformation()
                      if l_0_53.User and (l_0_53.User).UserName and l_0_53.Session and (l_0_53.Session).Id then
                        local l_0_54 = l_0_49 .. "-" .. (l_0_53.User).UserName
                        AppendToRollingQueue(l_0_54, l_0_52, l_0_0.weight, l_0_50, l_0_51)
                        local l_0_55 = GetRollingQueueSumOfValues(l_0_54)
                        local l_0_56, l_0_57 = CheckNewThresholdMet(l_0_55.sum, l_0_0.weight, l_0_48)
                        if l_0_56 then
                          (bm.trigger_sig)("MassTampering_" .. l_0_57 .. "_User", tostring(l_0_55.sum) .. ";" .. l_0_54)
                          return mp.INFECTED
                        end
                      end
                      do
                        local l_0_58 = GetRollingQueueSumOfValues(l_0_49)
                        local l_0_59, l_0_60 = CheckNewThresholdMet(l_0_58.sum, l_0_0.weight, l_0_47)
                        if l_0_59 then
                          (bm.trigger_sig)("MassTampering_" .. l_0_60 .. "_Machine", tostring(l_0_58.sum) .. ";" .. l_0_49)
                          return mp.INFECTED
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
      end
    end
  end
end

