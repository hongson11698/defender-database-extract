-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000082d7_luac 

-- params : ...
-- function num : 0
table_hasvalue = function(l_1_0, l_1_1)
  -- function num : 0_0
  for l_1_5,l_1_6 in ipairs(l_1_0) do
    if l_1_6 == l_1_1 then
      return l_1_5
    end
  end
  return false
end

table_contains = function(l_2_0, l_2_1)
  -- function num : 0_1
  for l_2_5,l_2_6 in ipairs(l_2_0) do
    if (string.find)(l_2_6, l_2_1, 1, true) then
      return l_2_5
    end
  end
  return false
end

GetMagicFromExtension = function(l_3_0)
  -- function num : 0_2
  l_3_0 = l_3_0:lower()
  local l_3_1 = {}
  l_3_1[".acm"] = "\\x4d\\x5a"
  l_3_1[".ax"] = "\\x4d\\x5a"
  l_3_1[".cpl"] = "\\x4d\\x5a"
  l_3_1[".dll"] = "\\x4d\\x5a"
  l_3_1[".drv"] = "\\x4d\\x5a"
  l_3_1[".efi"] = "\\x4d\\x5a"
  l_3_1[".exe"] = "\\x4d\\x5a"
  l_3_1[".mui"] = "\\x4d\\x5a"
  l_3_1[".ocx"] = "\\x4d\\x5a"
  l_3_1[".scr"] = "\\x4d\\x5a"
  l_3_1[".sys"] = "\\x4d\\x5a"
  l_3_1[".tsp"] = "\\x4d\\x5a"
  l_3_1[".xml"] = "\\x3c\\x3f"
  l_3_1[".bmp"] = "\\x42\\x4d"
  l_3_1[".bz2"] = "\\x42\\x5a"
  l_3_1[".tbz"] = "\\x42\\x5a"
  l_3_1[".jpg"] = "\\xff\\xd8"
  l_3_1[".jpeg"] = "\\xff\\xd8"
  l_3_1[".zip"] = "\\x50\\x4b"
  l_3_1[".docx"] = "\\x50\\x4b"
  l_3_1[".docm"] = "\\x50\\x4b"
  l_3_1[".dotx"] = "\\x50\\x4b"
  l_3_1[".dotm"] = "\\x50\\x4b"
  l_3_1[".xlsx"] = "\\x50\\x4b"
  l_3_1[".xlsm"] = "\\x50\\x4b"
  l_3_1[".xlam"] = "\\x50\\x4b"
  l_3_1[".xltm"] = "\\x50\\x4b"
  l_3_1[".pptx"] = "\\x50\\x4b"
  l_3_1[".pptm"] = "\\x50\\x4b"
  l_3_1[".appx"] = "\\x50\\x4b"
  l_3_1[".sh"] = "\\x23\\x21"
  l_3_1[".mp3"] = "\\x49\\x44"
  l_3_1[".swf"] = "\\x46\\x57"
  l_3_1[".flv"] = "\\x46\\x4c"
  l_3_1[".ogg"] = "\\x4f\\x67"
  l_3_1[".gz"] = "\\x1f\\x8b"
  l_3_1[".mp4"] = "\\x00\\x00"
  l_3_1[".gzip"] = "\\x1f\\x8b"
  l_3_1[".tgz"] = "\\x1f\\x8b"
  l_3_1[".slk"] = "\\x49\\x44"
  l_3_1[".tiff"] = "\\x4d\\x4d\\x00\\x2a"
  l_3_1[".cab"] = "\\x4d\\x53\\x43\\x46"
  l_3_1[".mid"] = "\\x4d\\x54\\x68\\x64"
  l_3_1[".midi"] = "\\x4d\\x54\\x68\\x64"
  l_3_1[".dmp"] = "\\x4d\\x44\\x4d\\x50"
  l_3_1[".mdmp"] = "\\x4d\\x44\\x4d\\x50"
  l_3_1[".doc"] = "\\xd0\\xcf\\x11\\xe0"
  l_3_1[".xls"] = "\\xd0\\xcf\\x11\\xe0"
  l_3_1[".ppt"] = "\\xd0\\xcf\\x11\\xe0"
  l_3_1[".msi"] = "\\xd0\\xcf\\x11\\xe0"
  l_3_1[".msg"] = "\\xd0\\xcf\\x11\\xe0"
  l_3_1[".png"] = "\\x89\\x50\\x4e\\x47"
  l_3_1[".gif"] = "\\x47\\x49\\x46\\x38"
  l_3_1[".woff"] = "\\x77\\x4f\\x46\\x46"
  l_3_1[".rar"] = "\\x52\\x61\\x72\\x21"
  l_3_1[".7z"] = "\\x37\\x7a\\xbc\\xaf"
  l_3_1[".7zip"] = "\\x37\\x7a\\xbc\\xaf"
  l_3_1[".crx"] = "\\x43\\x72\\x32\\x34"
  l_3_1[".ttf"] = "\\x00\\x01\\x00\\x00"
  l_3_1[".dex"] = "\\x64\\x65\\x78\\x0a"
  l_3_1[".deb"] = "\\x21\\x3c\\x61\\x72"
  l_3_1[".pst"] = "\\x21\\x42\\x44\\x4e"
  l_3_1[".vbe"] = "\\x23\\x40\\x7e\\x5e"
  l_3_1[".dwg"] = "\\x41\\x43\\x31\\x30"
  l_3_1[".riff"] = "\\x52\\x49\\x46\\x46"
  l_3_1[".webp"] = "\\x52\\x49\\x46\\x46"
  l_3_1[".sis"] = "\\x7a\\x1a\\x20\\x10"
  l_3_1[".sisx"] = "\\x7a\\x1a\\x20\\x10"
  l_3_1[".lnk"] = "\\x4c\\x00\\x00\\x00"
  l_3_1[".arw"] = "\\x49\\x49\\x2a\\x00"
  l_3_1[".nef"] = "\\x49\\x49\\x2a\\x00"
  l_3_1[".cr2"] = "\\x49\\x49\\x2a\\x00"
  l_3_1[".rw2"] = "\\x49\\x49\\x55\\x00"
  l_3_1[".psd"] = "\\x38\\x42\\x50\\x53"
  l_3_1[".w3n"] = "\\x48\\x4d\\x33\\x57"
  l_3_1[".rtf"] = "\\x7b\\x5c\\x72\\x74"
  l_3_1[".pdf"] = "\\x25\\x50\\x44\\x46"
  l_3_1[".sqlite"] = "\\x53\\x51\\x4c\\x69"
  l_3_1[".sqlite3"] = "\\x53\\x51\\x4c\\x69"
  l_3_1[".s3db"] = "\\x53\\x51\\x4c\\x69"
  l_3_1[".pnf"] = "\\x01\\x03\\x02\\x00"
  l_3_1[".class"] = "\\xca\\xfe\\xba\\xbe"
  l_3_1[".jsp"] = "\\xca\\xfe\\xba\\xbe"
  return l_3_1[l_3_0]
end

ExtensionToMagicMismatch = function(l_4_0, l_4_1)
  -- function num : 0_3
  l_4_0 = l_4_0:lower()
  l_4_1 = l_4_1:lower()
  local l_4_2 = GetMagicFromExtension(l_4_0)
  if #l_4_1 < 8 or l_4_2 == nil then
    return nil
  end
  -- DECOMPILER ERROR at PC29: Unhandled construct in 'MakeBoolean' P1

  if #l_4_2 <= #l_4_1 and (string.sub)(l_4_1, 1, #l_4_2) ~= l_4_2 then
    return true
  end
  if (string.sub)(l_4_2, 1, #l_4_1) ~= l_4_1 then
    return true
  end
  return false
end

in_array = function(l_5_0, l_5_1)
  -- function num : 0_4
  for l_5_5,l_5_6 in pairs(l_5_0) do
    if l_5_6 == l_5_1 then
      return l_5_5
    end
  end
  return false
end

table_lookup = function(l_6_0, l_6_1)
  -- function num : 0_5
  local l_6_2 = {}
  for l_6_6,l_6_7 in ipairs(l_6_0) do
    if l_6_7.key == l_6_1 then
      (table.insert)(l_6_2, l_6_6)
    end
  end
  do
    return #l_6_2 > 0 and l_6_2 or false
  end
end

table_lookup_keys = function(l_7_0, l_7_1)
  -- function num : 0_6
  local l_7_2 = {}
  for l_7_6,l_7_7 in ipairs(l_7_0) do
    for l_7_11,l_7_12 in ipairs(l_7_1) do
      if l_7_7.key == l_7_12 then
        (table.insert)(l_7_2, l_7_11)
      end
    end
  end
  do
    return #l_7_2 > 0 and l_7_2 or false
  end
end

table_concat_r = function(l_8_0, l_8_1, l_8_2, l_8_3)
  -- function num : 0_7
  local l_8_4 = false
  local l_8_5 = nil
  for l_8_9,l_8_10 in ipairs(l_8_0) do
    l_8_5 = false
    for l_8_14,l_8_15 in ipairs(l_8_1) do
      if l_8_5 then
        l_8_5 = l_8_5 .. l_8_2 .. l_8_10[l_8_15]
      else
        l_8_5 = l_8_10[l_8_15]
      end
    end
    if l_8_4 then
      l_8_4 = l_8_4 .. l_8_3 .. l_8_5
    else
      l_8_4 = l_8_5
    end
  end
  return l_8_4
end

table_concat_kv = function(l_9_0, l_9_1, l_9_2)
  -- function num : 0_8
  local l_9_3 = false
  local l_9_4 = nil
  for l_9_8,l_9_9 in pairs(l_9_0) do
    l_9_4 = l_9_8 .. l_9_1 .. l_9_9
    if l_9_3 then
      l_9_3 = l_9_3 .. l_9_2 .. l_9_4
    else
      l_9_3 = l_9_4
    end
  end
  return l_9_3
end

table_cleanup = function(l_10_0)
  -- function num : 0_9
  local l_10_1 = {}
  for l_10_5,l_10_6 in pairs(l_10_0) do
    if l_10_6 ~= "" and #trim(l_10_6) > 0 then
      l_10_1[l_10_5] = l_10_6
    end
  end
  return l_10_1
end

table_dedup = function(l_11_0)
  -- function num : 0_10
  local l_11_1 = {}
  local l_11_2 = {}
  for l_11_6,l_11_7 in ipairs(l_11_0) do
    if not l_11_1[l_11_7] then
      l_11_2[#l_11_2 + 1] = l_11_7
      l_11_1[l_11_7] = true
    end
  end
  return l_11_2
end

convert_to_hashtable = function(l_12_0, l_12_1)
  -- function num : 0_11
  if not l_12_1 then
    l_12_1 = {}
  end
  if l_12_0 then
    for l_12_5,l_12_6 in pairs(l_12_0) do
      l_12_1[l_12_6] = 0
    end
  end
  do
    return l_12_1
  end
end

deepCopy = function(l_13_0, l_13_1)
  -- function num : 0_12
  if not l_13_1 then
    l_13_1 = {}
  end
  local l_13_2 = nil
  if type(l_13_0) == "table" then
    if l_13_1[l_13_0] then
      l_13_2 = l_13_1[l_13_0]
    else
      l_13_2 = {}
      l_13_1[l_13_0] = l_13_2
      for l_13_6,l_13_7 in next do
        local l_13_8 = deepCopy(l_13_6, l_13_1)
        l_13_2[l_13_8] = deepCopy(l_13_7, l_13_1)
      end
    end
  else
    do
      l_13_2 = l_13_0
      return l_13_2
    end
  end
end

UpdateScalarCounter = function(l_14_0, l_14_1)
  -- function num : 0_13
  do
    if (MpCommon.GetPersistContextNoPath)(l_14_0) == nil then
      local l_14_2 = 0
    end
    -- DECOMPILER ERROR at PC8: Confused about usage of register: R2 in 'UnsetPending'

    if type(l_14_2) ~= "number" then
      local l_14_3 = 0 + l_14_1
      local l_14_4 = MpCommon.OverwritePersistContextNoPath
      local l_14_5 = l_14_0
      local l_14_6 = {}
      -- DECOMPILER ERROR at PC19: No list found for R5 , SetList fails

      -- DECOMPILER ERROR at PC20: Overwrote pending register: R6 in 'AssignReg'

      l_14_4(l_14_5, l_14_6, l_14_3)
      return l_14_3
    end
  end
end

table_pack = function(...)
  -- function num : 0_14
  return {...}
end

table_unpack = function(l_16_0, l_16_1)
  -- function num : 0_15
  if not l_16_1 then
    l_16_1 = 1
  end
  if l_16_0[l_16_1] ~= nil then
    return l_16_0[l_16_1], table_unpack(l_16_0, l_16_1 + 1)
  end
end

json_encode = function(l_17_0, l_17_1)
  -- function num : 0_16
  if l_17_1 == nil then
    l_17_1 = true
  end
  return encode_json_worker(l_17_0, l_17_1)
end

safeJsonSerialize = function(l_18_0)
  -- function num : 0_17
  local l_18_1, l_18_2 = pcall(MpCommon.JsonSerialize, l_18_0)
  if not l_18_1 then
    l_18_1 = pcall(encode_json_worker, l_18_0, true)
  end
  return l_18_1 and l_18_2 or nil
end

safeJsonDeserialize = function(l_19_0)
  -- function num : 0_18
  local l_19_1, l_19_2 = pcall(MpCommon.JsonDeserialize, l_19_0)
  return l_19_1 and l_19_2 or nil
end

escapeChar4Json = function(l_20_0)
  -- function num : 0_19
  local l_20_1 = {}
  l_20_1["\\"] = "\\\\"
  l_20_1["\""] = "\\\""
  l_20_1["\b"] = "\\b"
  l_20_1["\f"] = "\\f"
  l_20_1["\n"] = "\\n"
  l_20_1["\r"] = "\\r"
  l_20_1["\t"] = "\\t"
  if not l_20_1[l_20_0] then
    return (string.format)("\\u%04x", l_20_0:byte())
  end
end

encodeString4Json = function(l_21_0)
  -- function num : 0_20
  return "\"" .. (string.gsub)(l_21_0, "[%z\001-\031\\\"]", escapeChar4Json) .. "\""
end

encodeNumber4Json = function(l_22_0)
  -- function num : 0_21
  local l_22_1 = string.format
  local l_22_2 = "%.14g"
  do
    local l_22_3 = l_22_0
    do return l_22_1(l_22_2, l_22_3) end
    -- DECOMPILER ERROR at PC6: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end

encodeScalar4Json = function(l_23_0)
  -- function num : 0_22
  if l_23_0 == nil then
    return "null"
  end
  local l_23_1 = {}
  l_23_1.string = encodeString4Json
  l_23_1.number = encodeNumber4Json
  l_23_1.boolean = tostring
  l_23_1["function"] = tostring
  local l_23_2 = type(l_23_0)
  do
    local l_23_3, l_23_4 = l_23_1[l_23_2] or tostring
    -- DECOMPILER ERROR at PC20: Confused about usage of register: R3 in 'UnsetPending'

    local l_23_5 = nil
    local l_23_6 = l_23_3
    do return l_23_6(l_23_0) end
    -- DECOMPILER ERROR at PC24: Confused about usage of register R4 for local variables in 'ReleaseLocals'

  end
end

encode_json_worker = function(l_24_0, l_24_1, l_24_2, l_24_3)
  -- function num : 0_23
  if l_24_0 == nil then
    return "null"
  end
  local l_24_4 = ""
  if not l_24_2 then
    l_24_2 = {}
  end
  if l_24_2[l_24_0] then
    l_24_4 = l_24_4 .. "\"circular reference\""
  end
  l_24_2[l_24_0] = true
  do
    local l_24_5 = l_24_1 and "" or "\r\n"
    local l_24_6 = nil
    if type(l_24_0) == "table" then
      local l_24_7 = nil
      do
        local l_24_8, l_24_9 = "", l_24_1 and "" or "  "
        local l_24_10 = nil
        local l_24_11 = nil
        -- DECOMPILER ERROR at PC46: Overwrote pending register: R9 in 'AssignReg'

        do
          if ((l_24_3 or not l_24_1) and not l_24_1) or not 0 then
            local l_24_12, l_24_18 = , 0
          end
          -- DECOMPILER ERROR at PC79: Overwrote pending register: R4 in 'AssignReg'

          if rawget(l_24_0, 1) ~= nil or next(l_24_0) == nil then
            if l_24_3 == 0 then
              for l_24_16,l_24_17 in ipairs(l_24_0) do
                local l_24_13, l_24_14, l_24_15 = , maxKeyLength(l_24_0) + 3
                -- DECOMPILER ERROR at PC84: Confused about usage of register: R15 in 'UnsetPending'

                -- DECOMPILER ERROR at PC94: Overwrote pending register: R4 in 'AssignReg'

                -- DECOMPILER ERROR at PC96: Confused about usage of register: R16 in 'UnsetPending'

                -- DECOMPILER ERROR at PC107: Overwrote pending register: R4 in 'AssignReg'

                -- DECOMPILER ERROR at PC121: Overwrote pending register: R4 in 'AssignReg'

                -- DECOMPILER ERROR at PC131: Overwrote pending register: R4 in 'AssignReg'

                -- DECOMPILER ERROR at PC138: Overwrote pending register: R4 in 'AssignReg'

              end
              -- DECOMPILER ERROR at PC143: Confused about usage of register: R9 in 'UnsetPending'

              -- DECOMPILER ERROR at PC145: Overwrote pending register: R4 in 'AssignReg'

              -- DECOMPILER ERROR at PC153: Overwrote pending register: R4 in 'AssignReg'

              if ((not l_24_1 or not "") and type(R16_PC96) ~= "table") or rawget(R16_PC96, 1) ~= nil or next(R16_PC96) ~= nil or l_24_3 == 0 then
                do
                  for l_24_22,l_24_23 in pairs(l_24_0) do
                    local l_24_19, l_24_20, l_24_21 = nil
                    -- DECOMPILER ERROR at PC163: Overwrote pending register: R4 in 'AssignReg'

                    if l_24_20 > 0 then
                      do
                        l_24_20 = l_24_20 + 1
                        -- DECOMPILER ERROR at PC166: Confused about usage of register: R16 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC171: Confused about usage of register: R16 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC177: Confused about usage of register: R16 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC193: Confused about usage of register: R15 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC199: Overwrote pending register: R4 in 'AssignReg'

                        -- DECOMPILER ERROR at PC213: Confused about usage of register: R15 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC219: Overwrote pending register: R4 in 'AssignReg'

                        -- DECOMPILER ERROR at PC222: Confused about usage of register: R16 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC227: Overwrote pending register: R4 in 'AssignReg'

                        -- DECOMPILER ERROR at PC241: Confused about usage of register: R15 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC246: Confused about usage of register: R16 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC249: Overwrote pending register: R4 in 'AssignReg'

                        -- DECOMPILER ERROR at PC250: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC250: LeaveBlock: unexpected jumping out IF_STMT

                      end
                    end
                  end
                  -- DECOMPILER ERROR at PC252: Confused about usage of register: R10 in 'UnsetPending'

                  -- DECOMPILER ERROR at PC257: Overwrote pending register: R4 in 'AssignReg'

                  -- DECOMPILER ERROR at PC261: Overwrote pending register: R4 in 'AssignReg'

                  -- DECOMPILER ERROR at PC263: Confused about usage of register: R9 in 'UnsetPending'

                  -- DECOMPILER ERROR at PC265: Overwrote pending register: R4 in 'AssignReg'

                  -- DECOMPILER ERROR at PC267: Overwrote pending register: R7 in 'AssignReg'

                  -- DECOMPILER ERROR at PC272: Overwrote pending register: R4 in 'AssignReg'

                  if not l_24_20 then
                    return l_24_4
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

is_numeric = function(l_25_0)
  -- function num : 0_24
  if tonumber(l_25_0) ~= nil then
    return true
  end
  return false
end

is_boolean = function(l_26_0)
  -- function num : 0_25
  if tobool(l_26_0) ~= nil then
    return true
  end
  return false
end

tobool = function(l_27_0)
  -- function num : 0_26
  if type(l_27_0) == "bool" then
    return l_27_0
  end
  if type(l_27_0) == "string" then
    if l_27_0 == "true" then
      return true
    end
    if l_27_0 == "false" then
      return false
    end
  end
end

math_ln = function(l_28_0)
  -- function num : 0_27
  -- DECOMPILER ERROR at PC5: Overwrote pending register: R1 in 'AssignReg'

  local l_28_1 = nil
  -- DECOMPILER ERROR at PC11: Overwrote pending register: R2 in 'AssignReg'

  local l_28_2 = nil
  -- DECOMPILER ERROR at PC12: Overwrote pending register: R3 in 'AssignReg'

  local l_28_3 = nil
  -- DECOMPILER ERROR at PC20: Overwrote pending register: R4 in 'AssignReg'

  return nil + l_28_1 * 69314718 / 100000000
end

math_log2 = function(l_29_0)
  -- function num : 0_28
  return math_ln(l_29_0) / math_ln(2)
end

math_pow = function(l_30_0, l_30_1)
  -- function num : 0_29
  local l_30_2 = 1
  for l_30_6 = 1, l_30_1 do
    l_30_2 = l_30_2 * l_30_0
  end
  return l_30_2
end

math_base = function(l_31_0, l_31_1)
  -- function num : 0_30
  local l_31_2 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  local l_31_3 = ""
  while l_31_0 > 0 do
    l_31_3 = (string.char)((string.byte)(l_31_2, l_31_0 % l_31_1 + 1)) .. l_31_3
    l_31_0 = math_floor(l_31_0 / l_31_1)
  end
  return l_31_3
end

math_abs = function(l_32_0)
  -- function num : 0_31
  if l_32_0 < 0 then
    return -l_32_0
  else
    return l_32_0
  end
end

math_max = function(...)
  -- function num : 0_32
  for l_33_4 = 2, #arg do
    local l_33_1 = arg[1]
    -- DECOMPILER ERROR at PC5: Confused about usage of register: R5 in 'UnsetPending'

    if l_33_1 < arg[R5_PC5] then
      l_33_1 = arg[R5_PC5]
    end
  end
  -- DECOMPILER ERROR at PC10: Confused about usage of register: R1 in 'UnsetPending'

  return l_33_1
end

math_min = function(...)
  -- function num : 0_33
  for l_34_4 = 2, #arg do
    local l_34_1 = arg[1]
    -- DECOMPILER ERROR at PC5: Confused about usage of register: R5 in 'UnsetPending'

    if arg[R5_PC5] < l_34_1 then
      l_34_1 = arg[R5_PC5]
    end
  end
  -- DECOMPILER ERROR at PC10: Confused about usage of register: R1 in 'UnsetPending'

  return l_34_1
end

math_floor = function(l_35_0)
  -- function num : 0_34
  do
    if l_35_0 < tonumber((string.format)("%.f", l_35_0)) then
      local l_35_1 = tonumber((string.format)("%.f", l_35_0)) - 1
    end
    -- DECOMPILER ERROR at PC10: Confused about usage of register: R1 in 'UnsetPending'

    return l_35_1
  end
end

math_modf = function(l_36_0)
  -- function num : 0_35
  local l_36_1 = math_round(l_36_0 / 10)
  local l_36_2 = l_36_0 - l_36_1
  return l_36_1, l_36_2
end

math_ceil = function(l_37_0)
  -- function num : 0_36
  do
    if tonumber((string.format)("%.f", l_37_0)) < l_37_0 then
      local l_37_1 = tonumber((string.format)("%.f", l_37_0)) + 1
    end
    -- DECOMPILER ERROR at PC10: Confused about usage of register: R1 in 'UnsetPending'

    return l_37_1
  end
end

math_round = function(l_38_0, l_38_1)
  -- function num : 0_37
  if not l_38_1 then
    l_38_1 = 0
  end
  local l_38_2 = tonumber
  do
    local l_38_3, l_38_4, l_38_5, l_38_6 = (string.format)("%." .. l_38_1 .. "f", l_38_0), .end
    do return l_38_2(l_38_3, l_38_4, l_38_5, l_38_6) end
    -- DECOMPILER ERROR at PC14: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  end
end

msb = function(l_39_0)
  -- function num : 0_38
  while 1 do
  end
  if l_39_0 ~= 0 then
    return 0 + 1
  end
end

math_sqrt_int = function(l_40_0)
  -- function num : 0_39
  local l_40_1 = 0
  if l_40_0 >= 0 and l_40_0 < 1 then
    l_40_1 = 0
  else
    if l_40_0 >= 1 and l_40_0 < 2 then
      l_40_1 = 1
    else
      if l_40_0 >= 2 and l_40_0 < 6 then
        l_40_1 = 2
      else
        if l_40_0 >= 6 and l_40_0 < 12 then
          l_40_1 = 3
        else
          if l_40_0 >= 12 and l_40_0 < 20 then
            l_40_1 = 4
          else
            if l_40_0 >= 20 and l_40_0 < 30 then
              l_40_1 = 5
            else
              if l_40_0 >= 30 and l_40_0 < 42 then
                l_40_1 = 6
              else
                if l_40_0 >= 42 and l_40_0 < 56 then
                  l_40_1 = 7
                else
                  if l_40_0 >= 56 and l_40_0 < 72 then
                    l_40_1 = 8
                  else
                    if l_40_0 >= 72 and l_40_0 < 90 then
                      l_40_1 = 9
                    else
                      if l_40_0 >= 90 and l_40_0 < 110 then
                        l_40_1 = 10
                      else
                        if l_40_0 >= 110 and l_40_0 < 132 then
                          l_40_1 = 11
                        else
                          if l_40_0 >= 132 and l_40_0 < 156 then
                            l_40_1 = 12
                          else
                            if l_40_0 >= 156 and l_40_0 < 182 then
                              l_40_1 = 13
                            else
                              if l_40_0 >= 182 and l_40_0 < 210 then
                                l_40_1 = 14
                              else
                                if l_40_0 >= 210 and l_40_0 < 240 then
                                  l_40_1 = 15
                                else
                                  if l_40_0 >= 240 and l_40_0 < 272 then
                                    l_40_1 = 16
                                  else
                                    if l_40_0 >= 272 and l_40_0 < 306 then
                                      l_40_1 = 17
                                    else
                                      if l_40_0 >= 306 and l_40_0 < 342 then
                                        l_40_1 = 18
                                      else
                                        if l_40_0 >= 342 and l_40_0 < 380 then
                                          l_40_1 = 19
                                        else
                                          if l_40_0 >= 380 and l_40_0 < 420 then
                                            l_40_1 = 20
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
  return l_40_1
end

parseInt = function(l_41_0)
  -- function num : 0_40
  local l_41_3, l_41_4, l_41_5, l_41_6, l_41_7, l_41_8, l_41_9 = nil
  if type(l_41_0) ~= "string" then
    local l_41_1 = tonumber
    local l_41_2 = l_41_0
    do return l_41_1(l_41_2) end
    -- DECOMPILER ERROR at PC9: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
  local l_41_10 = nil
  for l_41_14 = l_41_10, #l_41_0 do
    local l_41_14 = nil
    -- DECOMPILER ERROR at PC21: Overwrote pending register: R6 in 'AssignReg'

  end
  do return 0 + l_41_14 end
  -- DECOMPILER ERROR at PC25: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

fromhex = function(l_42_0)
  -- function num : 0_41
  return l_42_0:gsub("..", function(l_43_0)
    -- function num : 0_41_0
    local l_43_1 = string.char
    do
      local l_43_2, l_43_3, l_43_4 = tonumber(l_43_0, 16), .end
      do return l_43_1(l_43_2, l_43_3, l_43_4) end
      -- DECOMPILER ERROR at PC8: Confused about usage of register R2 for local variables in 'ReleaseLocals'

    end
  end
)
end

tohex = function(l_43_0)
  -- function num : 0_42
  return l_43_0:gsub(".", function(l_44_0)
    -- function num : 0_42_0
    local l_44_1 = string.format
    local l_44_2 = "%02X"
    do
      local l_44_3, l_44_4 = (string.byte)(l_44_0), .end
      do return l_44_1(l_44_2, l_44_3, l_44_4) end
      -- DECOMPILER ERROR at PC9: Confused about usage of register R2 for local variables in 'ReleaseLocals'

    end
  end
)
end

rot_decrypt = function(l_44_0, l_44_1)
  -- function num : 0_43
  if not l_44_1 then
    l_44_1 = 13
  end
  local l_44_2 = {}
  for l_44_6 = 1, #l_44_0 do
    local l_44_11, l_44_12 = nil
    l_44_11, l_44_12 = l_44_0:byte, l_44_0
    l_44_11 = l_44_11(l_44_12, l_44_6)
    local l_44_7, l_44_13 = nil
    if l_44_11 >= 65 and l_44_11 <= 90 then
      l_44_12 = l_44_11 - 65
      l_44_12 = l_44_12 + l_44_1
      l_44_12 = (l_44_12) % 26
      l_44_11 = l_44_12 + 65
    else
      if l_44_11 >= 97 and l_44_11 <= 122 then
        l_44_12 = l_44_11 - 97
        l_44_12 = l_44_12 + l_44_1
        l_44_12 = (l_44_12) % 26
        l_44_11 = l_44_12 + 97
      end
    end
    l_44_12 = #l_44_2
    l_44_12 = l_44_12 + 1
    local l_44_8, l_44_14 = nil
    l_44_7 = string
    l_44_7 = l_44_7.char
    l_44_13 = l_44_11
    local l_44_16 = nil
    l_44_7 = l_44_7(l_44_13)
    local l_44_15 = nil
    l_44_2[l_44_12] = l_44_7
  end
  -- DECOMPILER ERROR at PC36: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  local l_44_9 = table.concat
  local l_44_10 = l_44_2
  do return l_44_9(l_44_10) end
  -- DECOMPILER ERROR at PC41: Confused about usage of register R4 for local variables in 'ReleaseLocals'

end

euclideanDistance = function(l_45_0, l_45_1)
  -- function num : 0_44
  return math_sqrt_int(math_pow(math_abs(l_45_0[1] - l_45_1[1]), 2) + math_pow(math_abs(l_45_0[2] - l_45_1[2]), 2))
end

lastIndexOf = function(l_46_0, l_46_1, l_46_2)
  -- function num : 0_45
  local l_46_3 = -1
  do
    local l_46_4 = 0
    repeat
      if l_46_4 and l_46_2 <= l_46_4 then
        break
      end
    until l_46_4 == nil
    do return l_46_3 end
    -- WARNING: undefined locals caused missing assignments!
  end
end

lastIndexOfChar = function(l_47_0, l_47_1)
  -- function num : 0_46
  if not l_47_0 or not l_47_1 then
    return -1
  end
  if #l_47_1 ~= 1 then
    return -1
  end
  if #l_47_0 < #l_47_1 then
    return -1
  end
  for l_47_5 = #l_47_0, 1, -1 do
    if (string.char)((string.byte)(l_47_0, l_47_5)) == l_47_1 then
      return l_47_5
    end
  end
  return -1
end

split = function(l_48_0, l_48_1, l_48_2)
  -- function num : 0_47
  if not l_48_0 then
    return l_48_2
  end
  if type(l_48_2) ~= "table" then
    l_48_2 = {}
  end
  do return l_48_2 end
  -- WARNING: undefined locals caused missing assignments!
end

kvsplit = function(l_49_0, l_49_1, l_49_2, l_49_3)
  -- function num : 0_48
  if not l_49_0 then
    return l_49_2
  end
  if type(l_49_2) ~= "table" then
    l_49_2 = {}
  end
  local l_49_4, l_49_5 = (string.find)(l_49_0, l_49_1)
  local l_49_6 = (string.sub)(l_49_0, 1, l_49_4 - 1)
  local l_49_7 = (string.sub)(l_49_0, l_49_5 + 1)
  local l_49_8 = tonumber(l_49_7)
  if l_49_8 then
    l_49_7 = l_49_8
  end
  if l_49_3 then
    l_49_7 = l_49_3(l_49_6, l_49_7)
  end
  l_49_2[l_49_6] = l_49_7
  return l_49_2
end

getLevenshteinDistance = function(l_50_0, l_50_1)
  -- function num : 0_49
  local l_50_2 = #l_50_0 + 1
  local l_50_3 = #l_50_1 + 1
  local l_50_4 = {}
  if l_50_2 == 0 then
    return l_50_3
  else
    if l_50_3 == 0 then
      return l_50_2
    else
      if l_50_0 == l_50_1 then
        return 0
      end
    end
  end
  for l_50_8 = 0, l_50_2 do
    l_50_4[l_50_8] = {}
    -- DECOMPILER ERROR at PC24: Confused about usage of register: R9 in 'UnsetPending'

    ;
    (l_50_4[l_50_8])[0] = l_50_8
  end
  for l_50_12 = 0, l_50_3 do
    -- DECOMPILER ERROR at PC31: Confused about usage of register: R9 in 'UnsetPending'

    (l_50_4[0])[l_50_12] = l_50_12
  end
  for l_50_16 = 1, l_50_2 do
    for l_50_20 = 1, l_50_3 do
      -- DECOMPILER ERROR at PC54: Confused about usage of register: R13 in 'UnsetPending'

      if l_50_0:byte(l_50_16) == l_50_1:byte(l_50_20) then
        (l_50_4[l_50_16])[l_50_20] = (l_50_4[l_50_16 - 1])[l_50_20 - 1]
      else
        -- DECOMPILER ERROR at PC70: Confused about usage of register: R13 in 'UnsetPending'

        ;
        (l_50_4[l_50_16])[l_50_20] = math_min((l_50_4[l_50_16 - 1])[l_50_20], (l_50_4[l_50_16])[l_50_20 - 1], (l_50_4[l_50_16 - 1])[l_50_20 - 1]) + 1
      end
    end
  end
  return (l_50_4[l_50_2])[l_50_3]
end

explode = function(l_51_0, l_51_1)
  -- function num : 0_50
  local l_51_2 = str_split
  local l_51_3 = l_51_0
  do
    local l_51_4 = l_51_1
    do return l_51_2(l_51_3, l_51_4) end
    -- DECOMPILER ERROR at PC5: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  end
end

str_split = function(l_52_0, l_52_1)
  -- function num : 0_51
  local l_52_2 = {}
  local l_52_3 = string.format
  local l_52_4 = "[%s]"
  do
    l_52_3 = l_52_3(l_52_4, l_52_1 or "%s")
    l_52_4 = 1
    while 1 do
      if not l_52_0:find(l_52_3, l_52_4) then
        do
          local l_52_6 = nil
          l_52_2[#l_52_2 + 1] = l_52_0:sub(l_52_4)
          do break end
          do
            local l_52_7 = nil
            l_52_2[#l_52_2 + 1] = l_52_0:sub(l_52_4, l_52_7 - 1)
            l_52_4 = l_52_7 + 1
            -- DECOMPILER ERROR at PC30: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC30: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC30: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    do return l_52_2 end
    -- DECOMPILER ERROR at PC32: freeLocal<0 in 'ReleaseLocals'

  end
end

StringEndsWith = function(l_53_0, l_53_1)
  -- function num : 0_52
  if not l_53_0 or not l_53_1 then
    return false
  end
  if #l_53_0 < #l_53_1 then
    return false
  end
  do return l_53_1 == "" or (string.sub)(l_53_0, -(string.len)(l_53_1)) == l_53_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

StringStartsWith = function(l_54_0, l_54_1)
  -- function num : 0_53
  do return l_54_1 == "" or (string.sub)(l_54_0, 1, (string.len)(l_54_1)) == l_54_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

StringSplit = function(l_55_0, l_55_1)
  -- function num : 0_54
  if l_55_1 == nil then
    l_55_1 = "%s"
  end
  local l_55_2 = {}
  for l_55_6 in (string.gmatch)(l_55_0, "([^" .. l_55_1 .. "]+)") do
    (table.insert)(l_55_2, l_55_6)
  end
  return l_55_2
end

str_pad = function(l_56_0, l_56_1, l_56_2, l_56_3)
  -- function num : 0_55
  local l_56_4 = 1
  local l_56_5 = 2
  local l_56_6 = 3
  if type(l_56_0) ~= "string" then
    l_56_0 = tostring(l_56_0)
  end
  if not l_56_2 then
    l_56_2 = " "
  end
  if not l_56_3 then
    l_56_3 = l_56_4
  end
  if l_56_1 < #l_56_0 then
    return l_56_0
  else
    local l_56_7 = l_56_1 - #l_56_0
    if l_56_3 == l_56_6 then
      local l_56_8 = ""
      local l_56_9 = ""
      local l_56_10 = math_floor(l_56_7 / 2)
      l_56_8 = str_repeat_to_length(l_56_2, l_56_10)
      l_56_9 = str_repeat_to_length(l_56_2, l_56_10 + l_56_7 % 2)
      return l_56_8 .. l_56_0 .. l_56_9
    else
      do
        if l_56_3 == l_56_5 then
          local l_56_11 = str_repeat_to_length(l_56_2, l_56_7)
          return l_56_11 .. l_56_0
        else
          do
            do
              local l_56_12 = str_repeat_to_length(l_56_2, l_56_7)
              do return l_56_0 .. l_56_12 end
              do return l_56_0 end
            end
          end
        end
      end
    end
  end
end

trim = function(l_57_0, l_57_1)
  -- function num : 0_56
  if not l_57_1 then
    l_57_1 = " "
  end
  local l_57_2 = rtrim
  do
    local l_57_5 = ltrim
    l_57_5 = l_57_5(l_57_0, l_57_1)
    local l_57_3 = nil
    l_57_3 = l_57_1
    local l_57_4 = nil
    do return l_57_2(l_57_5, l_57_3) end
    -- DECOMPILER ERROR at PC11: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  end
end

ltrim = function(l_58_0, l_58_1)
  -- function num : 0_57
  if not l_58_1 then
    l_58_1 = " "
  end
  local l_58_2 = string.gsub
  local l_58_3 = l_58_0
  do
    local l_58_6 = "^(["
    l_58_6 = l_58_6 .. l_58_1 .. "]+)"
    local l_58_4 = nil
    l_58_4 = ""
    local l_58_5 = nil
    do return l_58_2(l_58_3, l_58_6, l_58_4) end
    -- DECOMPILER ERROR at PC13: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  end
end

rtrim = function(l_59_0, l_59_1)
  -- function num : 0_58
  if not l_59_1 then
    l_59_1 = " "
  end
  local l_59_2 = string.gsub
  local l_59_3 = l_59_0
  do
    local l_59_6 = "(["
    l_59_6 = l_59_6 .. l_59_1 .. "]+)$"
    local l_59_4 = nil
    l_59_4 = ""
    local l_59_5 = nil
    do return l_59_2(l_59_3, l_59_6, l_59_4) end
    -- DECOMPILER ERROR at PC13: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  end
end

addPadding = function(l_60_0, l_60_1)
  -- function num : 0_59
  if type(l_60_0) ~= "string" then
    l_60_0 = tostring(l_60_0)
  end
  if l_60_1 < #l_60_0 then
    return l_60_0
  else
    local l_60_2 = str_repeat(" ", l_60_1 - #l_60_0)
    return l_60_0 .. l_60_2
  end
end

maxKeyLength = function(l_61_0)
  -- function num : 0_60
  local l_61_1 = 0
  for l_61_5,l_61_6 in pairs(l_61_0) do
    if type(l_61_5) == "number" then
      l_61_5 = tostring(l_61_5)
    end
    if l_61_1 < #l_61_5 then
      l_61_1 = #l_61_5
    end
  end
  return l_61_1
end

-- WARNING: undefined locals caused missing assignments!

