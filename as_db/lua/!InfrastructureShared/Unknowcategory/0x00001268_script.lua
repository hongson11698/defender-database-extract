-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001268_luac 

-- params : ...
-- function num : 0
ScanAllUefiEnvVars = function()
  -- function num : 0_0
  local l_1_0 = (MpCommon.EnumerateFirmwareEnvironmentVariables)()
  if not l_1_0 then
    return 
  end
  local l_1_1 = {}
  local l_1_2 = {}
  local l_1_3 = {}
  -- DECOMPILER ERROR at PC13: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC14: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC18: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC19: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC21: Overwrote pending register: R7 in 'AssignReg'

  l_1_3 = {805306683, 1000, false, "{8be4df61-93ca-11d2-aa0d-00e098302288}"}
  l_1_1.roodkcaBdrauGifE, l_1_2 = l_1_2, {l_1_3}
  l_1_3 = {805306684, 1000, false, "{8be4df61-93ca-11d2-aa0d-00e098032b8c}"}
  l_1_1.EfiGuardBackdoor, l_1_2 = l_1_2, {l_1_3}
  l_1_3 = {805306685, 100, false, "{ec87d643-eba4-4bb5-a1e5-3f3e36b20da9}", 7}
  l_1_1.setup, l_1_2 = l_1_2, {l_1_3}
  l_1_3 = {805306686, 100, false, "{4599d26f-1a11-49b8-b91f-858745cff824}", 7}
  l_1_1.stddefaults, l_1_2 = l_1_2, {l_1_3}
  l_1_3 = {805306687, 100, false, "{8be4df61-93ca-11d2-aa0d-00e098032b8c}"}
  l_1_1.backdoor, l_1_2 = l_1_2, {l_1_3}
  l_1_3 = {805306688, nil, false, "{26153152-363d-1670-8d94-47a9fa8c4c16}"}
  l_1_1.loaded, l_1_2 = l_1_2, {l_1_3}
  l_1_3 = {805306688, nil, false, "{26153152-363d-1670-8d94-47a9fa8c4c16}"}
  l_1_1.backdoordataaddress, l_1_2 = l_1_2, {l_1_3}
  l_1_3 = {2896396613, nil, false, "{6ACCE65D-DA35-4B39-B64B-5ED927A7DC7E}", 7}
  l_1_1["cE!"], l_1_2 = l_1_2, {l_1_3}
  l_1_3 = {2896396613, nil, false, "{6ACCE65D-DA35-4B39-B64B-5ED927A7DC7E}", 7}
  l_1_1.ChgBootSecureBootDisable, l_1_2 = l_1_2, {l_1_3}
  l_1_3 = {2896396613, nil, false, "{6ACCE65D-DA35-4B39-B64B-5ED927A7DC7E}", 7}
  l_1_1.ChgBootChangeLegacy, l_1_2 = l_1_2, {l_1_3}
  local l_1_4 = {}
  -- DECOMPILER ERROR at PC117: No list found for R4 , SetList fails

  -- DECOMPILER ERROR at PC122: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC123: Overwrote pending register: R6 in 'AssignReg'

  l_1_4 = {805306689, 1000, false}
  l_1_3 = {l_1_4}
  l_1_4 = function(l_2_0)
    -- function num : 0_0_0
    return l_2_0[1], l_2_0[2], l_2_0[3], l_2_0[4], l_2_0[5], l_2_0[6], l_2_0[7]
  end

  parseUefiEnvVarSig = l_1_4
  l_1_4 = function(l_3_0, l_3_1, l_3_2, l_3_3)
    -- function num : 0_0_1 , upvalues : l_1_3
    local l_3_4 = "uefienvvar"
    local l_3_5 = (string.format)("%s:%s", l_3_0, l_3_1)
    -- DECOMPILER ERROR at PC8: Confused about usage of register: R6 in 'UnsetPending'

    l_1_3[l_3_0] = true
    if l_3_3 then
      (MpDetection.ReportResource)(l_3_4, l_3_5, l_3_2, false)
    else
      ;
      (MpCommon.ReportLowfiEx)(l_3_5, l_3_2, l_3_4)
    end
  end

  reportUefiEnvVar = l_1_4
  l_1_4 = true
  local l_1_5 = false
  local l_1_6 = true
  for l_1_10,l_1_11 in pairs(l_1_0) do
    local l_1_12 = l_1_11.VarName
    local l_1_13 = l_1_11.VarGuid
    if l_1_12 and l_1_13 then
      l_1_12 = (string.lower)(l_1_12)
      l_1_13 = (string.lower)(l_1_13)
      local l_1_14 = l_1_1[l_1_12]
      if l_1_14 then
        for l_1_18,l_1_19 in ipairs(l_1_14) do
          local l_1_20, l_1_21, l_1_22, l_1_23, l_1_24, l_1_25, l_1_26 = parseUefiEnvVarSig(l_1_19)
          if (((not l_1_20 or (l_1_21 and not (MpCommon.IsSampled)(l_1_21, l_1_4, l_1_5, l_1_6)) or (l_1_23 and l_1_23 ~= l_1_13) or (l_1_24 and (crypto.bitand)(l_1_11.VarAttributes, l_1_24) ~= l_1_24) or (l_1_25 and l_1_25 ~= l_1_11.VarFullValueSize) or (not l_1_26 or (string.find)(l_1_11.VarValue, l_1_26))))) then
            do
              do
                reportUefiEnvVar(l_1_13, l_1_11.VarName, l_1_20, l_1_22)
                do break end
                -- DECOMPILER ERROR at PC214: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC214: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC214: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      else
        if not l_1_3[l_1_13] then
          local l_1_27 = l_1_2[l_1_13]
          if l_1_27 then
            for l_1_31,l_1_32 in ipairs(l_1_27) do
              local l_1_33, l_1_34, l_1_35 = parseUefiEnvVarSig(l_1_32)
              if l_1_33 and (not l_1_34 or (MpCommon.IsSampled)(l_1_34, l_1_4, l_1_5, l_1_6)) then
                reportUefiEnvVar(l_1_13, l_1_11.VarName, l_1_33, l_1_35)
              end
            end
          end
        end
      end
    end
  end
  -- DECOMPILER ERROR at PC253: Confused about usage of register R10 for local variables in 'ReleaseLocals'

end

IsUefiEnvVarScanSupported = function()
  -- function num : 0_1
  local l_2_0 = -1
  do
    local l_2_1 = 203
    if (versioning.GetEngineBuild)() >= 16934 then
      l_2_0 = (MpCommon.GetFirmwareEnvironmentVariable)("MpNonExistentUefiVarName", "{0718a447-42c8-4591-9c76-b55112ef2430}", 32)
    end
    do return l_2_0 == l_2_1 end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end

IsUefiEnvVarScanExcluded = function()
  -- function num : 0_2
  local l_3_0 = (sysio.RegOpenKey)("hklm\\Hardware\\Description\\System\\Bios")
  if not l_3_0 then
    return true
  end
  local l_3_1 = (sysio.GetRegValueAsString)(l_3_0, "BIOSVendor")
  if l_3_1 and (string.lower)(l_3_1) == "hp" then
    return true
  end
  l_3_1 = (sysio.GetRegValueAsString)(l_3_0, "BaseBoardManufacturer")
  if l_3_1 and (string.lower)(l_3_1) == "hp" then
    return true
  end
  l_3_1 = (sysio.GetRegValueAsString)(l_3_0, "SystemManufacturer")
  if l_3_1 and (string.lower)(l_3_1) == "hp" then
    return true
  end
  return false
end

Infrastructure_ScanUefiEnvironmentVariables = function()
  -- function num : 0_3
  if IsUefiEnvVarScanSupported() and not IsUefiEnvVarScanExcluded() then
    ScanAllUefiEnvVars()
  end
end


