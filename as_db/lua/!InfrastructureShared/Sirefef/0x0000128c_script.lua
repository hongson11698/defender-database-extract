-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Sirefef\0x0000128c_luac 

-- params : ...
-- function num : 0
FixArchivePath = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = (string.find)(l_1_0, "->", 1, true)
  if l_1_1 ~= nil and l_1_1 > 1 then
    local l_1_2 = string.sub
    local l_1_3 = l_1_0
    local l_1_4 = 1
    do
      local l_1_5 = l_1_1 - 1
      do return l_1_2(l_1_3, l_1_4, l_1_5) end
      -- DECOMPILER ERROR at PC18: Confused about usage of register R3 for local variables in 'ReleaseLocals'

      do return l_1_0 end
      -- DECOMPILER ERROR at PC19: Confused about usage of register R2 for local variables in 'ReleaseLocals'

    end
  end
end

ExtractFileName = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = (string.reverse)(l_2_0)
  local l_2_2 = (string.find)(l_2_1, "\\", 1, true)
  if not l_2_2 or l_2_2 == 1 then
    return l_2_0
  end
  local l_2_3 = string.reverse
  do
    local l_2_4, l_2_5, l_2_6, l_2_7 = (string.sub)(l_2_1, 1, l_2_2 - 1), .end
    do return l_2_3(l_2_4, l_2_5, l_2_6, l_2_7) end
    -- DECOMPILER ERROR at PC26: Confused about usage of register R4 for local variables in 'ReleaseLocals'

  end
end

CheckAllowDriverDelete = function()
  -- function num : 0_2
  if #(Remediation.Threat).Resources == 1 and (string.match)((Remediation.Threat).Name, "^Trojan:WinNT/") then
    local l_3_0 = (string.lower)((((Remediation.Threat).Resources)[1]).Path)
    if ((string.match)(l_3_0, "\\winsxs\\") or (string.match)(l_3_0, "^\\\\%?\\%a:\\system volume information\\_restore{[0-9a-f-]+}\\")) and bitand((Remediation.Threat).RemovalPolicy, 256) ~= 0 then
      (Remediation.SetRemovalPolicy)((Remediation.Threat).RemovalPolicy - 256)
      return true
    end
    local l_3_1 = ExtractFileName(FixArchivePath(l_3_0))
    for l_3_5,l_3_6 in pairs((sysio.EnumerateServices)()) do
      local l_3_7 = (sysio.GetCommandLineFromService)(l_3_6.ServiceName)
      if not l_3_7 then
        return false
      end
      if (string.match)((string.lower)(l_3_7), l_3_1) then
        return false
      end
    end
  end
  do
    l_3_0 = bitand
    l_3_1 = Remediation
    l_3_1 = l_3_1.Threat
    l_3_1 = l_3_1.RemovalPolicy
    l_3_0 = l_3_0(l_3_1, 256)
    if l_3_0 ~= 0 then
      l_3_0 = Remediation
      l_3_0 = l_3_0.SetRemovalPolicy
      l_3_1 = Remediation
      l_3_1 = l_3_1.Threat
      l_3_1 = l_3_1.RemovalPolicy
      l_3_1 = l_3_1 - 256
      l_3_0(l_3_1)
      l_3_0 = true
      return l_3_0
    end
    l_3_0 = false
    return l_3_0
  end
end

StringToBytes = function(l_4_0)
  -- function num : 0_3
  if not l_4_0 then
    return nil
  end
  local l_4_1 = {}
  for l_4_5 = 1, (string.len)(l_4_0) do
    l_4_1[l_4_5] = (string.byte)(l_4_0, l_4_5)
  end
  return l_4_1
end

BytesToString = function(l_5_0)
  -- function num : 0_4
  if not l_5_0 then
    return nil
  end
  local l_5_1 = {}
  for l_5_5 = 1, #l_5_0 do
    local l_5_8, l_5_9 = nil
    l_5_8 = string
    l_5_8 = l_5_8.char
    l_5_9 = l_5_0[l_5_5]
    local l_5_11 = nil
    l_5_8 = l_5_8(l_5_9)
    local l_5_10 = nil
    l_5_1[l_5_5] = l_5_8
  end
  -- DECOMPILER ERROR at PC15: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  local l_5_6 = table.concat
  local l_5_7 = l_5_1
  do return l_5_6(l_5_7) end
  -- DECOMPILER ERROR at PC20: Confused about usage of register R3 for local variables in 'ReleaseLocals'

end

GetSystemRootPath = function()
  -- function num : 0_5
  local l_6_0 = (sysio.ExpandFilePath)("%SystemRoot%")
  if not l_6_0 then
    return nil
  end
  for l_6_4,l_6_5 in pairs(l_6_0) do
    if not (string.find)(l_6_5, "%%SystemRoot%%") then
      return l_6_5
    end
  end
  return nil
end

SafeWriteFile = function(l_7_0, l_7_1)
  -- function num : 0_6
  l_7_0 = FixArchivePath(l_7_0)
  if (sysio.ReadFile)(l_7_0, 0, 2) ~= "MZ" then
    return false, 191
  end
  if (sysio.WriteFile)(l_7_0, 0, l_7_1) ~= (string.len)(l_7_1) then
    return false, 29
  end
  return true, 0
end

CalculatePEChecksum = function(l_8_0)
  -- function num : 0_7
  local l_8_1 = 0
  local l_8_2 = 0
  local l_8_3 = (string.len)(l_8_0)
  for l_8_7 = 0, (crypto.shr32)(l_8_3, 1) - 1 do
    l_8_1 = l_8_1 + readu16(l_8_0, l_8_7 * 2) + l_8_2
    if l_8_1 >= 65536 then
      l_8_2 = 1
    else
      l_8_2 = 0
    end
    l_8_1 = bitand(l_8_1, 65535)
  end
  if bitand(l_8_3, 1) ~= 0 then
    l_8_1 = l_8_1 + readu8(l_8_0, l_8_3 - 1)
  end
  return l_8_3 + (l_8_1) + l_8_2
end

ValidateDecryptedDriver = function(l_9_0)
  -- function num : 0_8
  local l_9_1 = (string.len)(l_9_0)
  if l_9_1 < 1024 then
    return false
  end
  if readu16(l_9_0, 0) ~= 23117 then
    return false
  end
  local l_9_2 = readu32(l_9_0, 60)
  if l_9_2 < 64 or l_9_1 <= l_9_2 or l_9_1 - 512 < l_9_2 then
    return false
  end
  if readu16(l_9_0, l_9_2) ~= 17744 then
    return false
  end
  if readu16(l_9_0, l_9_2 + 4) ~= 332 then
    return false
  end
  if readu16(l_9_0, l_9_2 + 92) ~= 1 then
    return false
  end
  local l_9_3 = readu32(l_9_0, l_9_2 + 88)
  local l_9_4 = (string.sub)(l_9_0, 1, l_9_2 + 88) .. "\000\000\000\000" .. (string.sub)(l_9_0, l_9_2 + 88 + 4 + 1)
  if CalculatePEChecksum(l_9_4) ~= l_9_3 then
    return false
  end
  return true
end

RestoreDriverByDecryption = function(l_10_0)
  -- function num : 0_9
  SetLuaInstrLimit((crypto.shl64)(1, 24))
  local l_10_1 = GetSystemRootPath()
  if not l_10_1 then
    return false, 0
  end
  local l_10_2 = (sysio.GetFileFsVolumeInformation)(l_10_1)
  if not l_10_2 then
    return false, 0
  end
  local l_10_3 = (sysio.RegOpenKey)("HKLM\\SYSTEM\\Setup\\Pid")
  if not l_10_3 then
    return false, 0
  end
  local l_10_4 = (sysio.RegQueryInfoKey)(l_10_3)
  if not l_10_4 then
    return false, 0
  end
  local l_10_5 = Int64ToByteString(l_10_2.VolumeCreationTime)
  local l_10_6 = Int64ToByteString(l_10_4.LastWriteTime)
  local l_10_7 = (crypto.MD5Buffer)(l_10_5, 0, (string.len)(l_10_5))
  local l_10_8 = bitxor(bitxor(bitxor(readu32(l_10_7, 0), readu32(l_10_7, 4)), readu32(l_10_7, 8)), readu32(l_10_7, 12))
  local l_10_9 = {}
  -- DECOMPILER ERROR at PC111: No list found for R9 , SetList fails

  -- DECOMPILER ERROR at PC112: Overwrote pending register: R10 in 'AssignReg'

  -- DECOMPILER ERROR at PC114: Overwrote pending register: R11 in 'AssignReg'

  -- DECOMPILER ERROR at PC115: Overwrote pending register: R12 in 'AssignReg'

  -- DECOMPILER ERROR at PC116: Overwrote pending register: R13 in 'AssignReg'

  -- DECOMPILER ERROR at PC118: Overwrote pending register: R14 in 'AssignReg'

  local l_10_10 = (("e").MD5Buffer)("a", "o", (("i").len)("m"))
  local l_10_11 = readu64(l_10_10, 0)
  local l_10_12 = ""
  -- DECOMPILER ERROR at PC128: Overwrote pending register: R15 in 'AssignReg'

  for l_10_16 = 1, 8, "n" do
    -- DECOMPILER ERROR at PC130: Overwrote pending register: R17 in 'AssignReg'

    -- DECOMPILER ERROR at PC131: Overwrote pending register: R18 in 'AssignReg'

    -- DECOMPILER ERROR at PC132: Overwrote pending register: R19 in 'AssignReg'

    -- DECOMPILER ERROR at PC133: Overwrote pending register: R20 in 'AssignReg'

  end
  -- DECOMPILER ERROR at PC149: Overwrote pending register: R12 in 'AssignReg'

  local l_10_17 = (string.format)(l_10_1 .. "\\$NtUninstallKB%u$", bitxor(bitand(l_10_8, 65535), (crypto.shr32)(l_10_8, 16)))
  local l_10_18 = (string.format)(l_10_17 .. "\\%u\\L\\%s", l_10_8, l_10_12)
  if Info.EngineVersion >= 75184 then
    (sysio.DeleteReparsePoints)(l_10_17, 0)
  end
  local l_10_19 = (sysio.GetFileSizeRaw)(l_10_18)
  if not l_10_19 or l_10_19 > 1048576 then
    return false, 1462
  end
  do
    local l_10_51, l_10_52, l_10_53, l_10_54, l_10_55, l_10_56, l_10_57, l_10_58, l_10_59, l_10_60, l_10_61, l_10_62, l_10_63 = StringToBytes, (sysio.ReadFileRaw)(l_10_18, 0, l_10_19), .end, "x", "e", "d", "c", "r", "f", "v", "t"
    l_10_51 = l_10_51(l_10_52, l_10_53, l_10_54, l_10_55, l_10_56, l_10_57, l_10_58, l_10_59, l_10_60, l_10_61, l_10_62, l_10_63, "g", "b", "y", "h", "n", "u", "j", "m", "i", "k", "o", "l", "p")
    local l_10_20 = nil
    if not l_10_51 then
      l_10_52 = false
      l_10_53 = 30
      return l_10_52, l_10_53
    end
    local l_10_21 = nil
    local l_10_22 = nil
    l_10_54 = 0
    local l_10_23 = nil
    l_10_55 = 0
    local l_10_24 = nil
    l_10_56 = StringToBytes
    l_10_57 = l_10_7
    l_10_56 = l_10_56(l_10_57)
    l_10_7 = l_10_56
    l_10_56 = 1
    l_10_57 = 256
    l_10_58 = 1
    for l_10_59 = l_10_56, l_10_57, l_10_58 do
      local l_10_25, l_10_26, l_10_27, l_10_28 = nil
      l_10_60 = l_10_59 - 1
    end
    for l_10_32 = 1, 256 do
      local l_10_29, l_10_30, l_10_31, l_10_32 = nil
      -- DECOMPILER ERROR at PC227: Confused about usage of register: R24 in 'UnsetPending'

      l_10_60, l_10_52 = l_10_52[l_10_59], {[l_10_59] = l_10_60}
      local l_10_33 = nil
      l_10_61 = bitand
      l_10_62 = l_10_55 + l_10_60
      l_10_63 = l_10_54 + 1
      l_10_63 = l_10_7[l_10_63]
      l_10_62 = l_10_62 + l_10_63
      l_10_63 = 255
      l_10_61 = l_10_61(l_10_62, l_10_63)
      l_10_55 = l_10_61
      l_10_61 = l_10_55 + 1
      l_10_61 = l_10_52[l_10_61]
      -- DECOMPILER ERROR at PC238: Confused about usage of register: R24 in 'UnsetPending'

      l_10_52[l_10_59] = l_10_61
      l_10_61 = l_10_55 + 1
      l_10_52[l_10_61] = l_10_60
      l_10_61 = bitand
      l_10_62 = l_10_54 + 1
      local l_10_49 = nil
      l_10_63 = 15
      local l_10_50 = nil
      l_10_61 = l_10_61(l_10_62, l_10_63)
      l_10_54 = l_10_61
    end
    for l_10_37 = 1, 256 do
      local l_10_34, l_10_35, l_10_36, l_10_37 = nil
      -- DECOMPILER ERROR at PC251: Confused about usage of register: R24 in 'UnsetPending'

      l_10_60 = l_10_52[l_10_59]
      l_10_60 = l_10_60 + 1
      local l_10_38 = nil
      -- DECOMPILER ERROR at PC253: Confused about usage of register: R24 in 'UnsetPending'

      l_10_61 = l_10_59 - 1
      local l_10_48 = nil
    end
    for l_10_42 = 1, l_10_19 do
      local l_10_39, l_10_40, l_10_41, l_10_42, l_10_46 = nil
      -- DECOMPILER ERROR at PC260: Confused about usage of register: R24 in 'UnsetPending'

      l_10_60 = l_10_51[l_10_59]
      l_10_60 = l_10_60 + 1
      l_10_60, l_10_53 = l_10_53[l_10_60], {[l_10_60] = l_10_61}
      local l_10_47 = nil
      -- DECOMPILER ERROR at PC263: Confused about usage of register: R24 in 'UnsetPending'

      l_10_51[l_10_59] = l_10_60
    end
    l_10_51 = BytesToString(l_10_51)
    if not ValidateDecryptedDriver(l_10_51) then
      return false, 193
    end
    local l_10_43 = nil
    local l_10_44 = nil
    local l_10_45 = nil
    do return SafeWriteFile(l_10_0, l_10_51) end
    -- DECOMPILER ERROR at PC282: Confused about usage of register R24 for local variables in 'ReleaseLocals'

  end
end

local l_0_0 = false
local l_0_1 = 0
if Info.EngineVersion >= 75085 and ((Remediation.Threat).Name == "Trojan:WinNT/Sirefef.J" or (Remediation.Threat).Name == "Trojan:WinNT/Sirefef.N") and bitand((Remediation.Threat).RemovalPolicy, 256) ~= 0 then
  for l_0_5,l_0_6 in pairs((Remediation.Threat).Resources) do
    if l_0_6.Schema == "file" and l_0_6.Path ~= "" then
      l_0_0 = RestoreDriverByDecryption(l_0_6.Path)
      if l_0_0 then
        (Remediation.SetRemovalPolicy)((Remediation.Threat).RemovalPolicy - 256)
      end
    end
  end
end
do
  local l_0_7 = false
  if Info.EngineVersion > 74598 and not (Remediation.Threat).Offline and not l_0_0 then
    l_0_7 = CheckAllowDriverDelete()
  end
  if not l_0_7 and l_0_1 ~= 0 then
    (Remediation.SetError)(l_0_1)
  end
end

