-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000082b4_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("HSTR:SingleFileHostApp") then
  return mp.CLEAN
end
local l_0_0 = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = tonumber
  local l_1_4 = (l_1_0:reverse()):gsub
  do
    local l_1_5 = l_1_0:reverse()
    l_1_4 = l_1_4(l_1_5, ".", function(l_2_0)
    -- function num : 0_0_0
    local l_2_1 = string.format
    local l_2_2 = "%02x"
    do
      local l_2_3, l_2_4 = (string.byte)(l_2_0), .end
      do return l_2_1(l_2_2, l_2_3, l_2_4) end
      -- DECOMPILER ERROR at PC9: Confused about usage of register R2 for local variables in 'ReleaseLocals'

    end
  end
)
    local l_1_2 = nil
    l_1_5 = 16
    local l_1_3 = nil
    do return l_1_1(l_1_4, l_1_5) end
    -- DECOMPILER ERROR at PC10: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end

local l_0_1 = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = {}
  l_2_1.i = 1
  l_2_1.ReadUInt32 = function(l_3_0)
    -- function num : 0_1_0 , upvalues : l_2_0
    local l_3_1 = (mp.readu_u32)(l_2_0, l_3_0.i)
    l_3_0.i = l_3_0.i + 4
    return l_3_1
  end

  l_2_1.ReadUInt64 = function(l_4_0)
    -- function num : 0_1_1 , upvalues : l_2_0
    local l_4_1 = (mp.readu_u64)(l_2_0, l_4_0.i)
    l_4_0.i = l_4_0.i + 8
    return l_4_1
  end

  l_2_1.ReadByte = function(l_5_0)
    -- function num : 0_1_2 , upvalues : l_2_0
    l_5_0.i = l_5_0.i + 1
    local l_5_1, l_5_2 = l_2_0:byte, l_2_0
    do
      local l_5_3 = l_5_0.i - 1
      do return l_5_1(l_5_2, l_5_3) end
      -- DECOMPILER ERROR at PC9: Confused about usage of register R2 for local variables in 'ReleaseLocals'

    end
  end

  l_2_1.ReadString = function(l_6_0)
    -- function num : 0_1_3 , upvalues : l_2_0
    local l_6_1 = l_2_0:byte(l_6_0.i)
    l_6_0.i = l_6_0.i + 1
    local l_6_2 = l_2_0:sub(l_6_0.i, l_6_0.i + l_6_1)
    l_6_0.i = l_6_0.i + l_6_1
    return l_6_2
  end

  return l_2_1
end

local l_0_3 = function(l_3_0)
  -- function num : 0_2 , upvalues : l_0_1
  local l_3_1 = {}
  l_3_1.Entries = {}
  local l_3_2 = l_0_1(l_3_0)
  l_3_1.MajorVersion = l_3_2:ReadUInt32()
  l_3_1.MinorVersion = l_3_2:ReadUInt32()
  if l_3_1.MajorVersion < 1 or l_3_1.MajorVersion > 6 then
    return {}
  end
  l_3_1.FileCount = l_3_2:ReadUInt32()
  l_3_1.BundleID = l_3_2:ReadString()
  if l_3_1.MajorVersion >= 2 then
    l_3_1.DepsJsonOffset = l_3_2:ReadUInt64()
    l_3_1.DepsJsonSize = l_3_2:ReadUInt64()
    l_3_1.RuntimeConfigJsonOffset = l_3_2:ReadUInt64()
    l_3_1.RuntimeConfigJsonSize = l_3_2:ReadUInt64()
    l_3_1.Flags = l_3_2:ReadUInt64()
  end
  for l_3_6 = 1, l_3_1.FileCount do
    if l_3_6 > 200 then
      break
    end
    local l_3_7 = {}
    l_3_7.Offset = l_3_2:ReadUInt64()
    l_3_7.Size = l_3_2:ReadUInt64()
    if l_3_1.MajorVersion >= 6 then
      l_3_7.CompressedSize = l_3_2:ReadUInt64()
    else
      l_3_7.CompressedSize = 0
    end
    l_3_7.Type = l_3_2:ReadByte()
    l_3_7.RelativePath = l_3_2:ReadString()
    ;
    (table.insert)(l_3_1.Entries, l_3_7)
  end
  do
    return l_3_1
  end
end

;
(mp.readprotection)(false)
local l_0_4 = nil
local l_0_5 = nil
;
(mp.readprotection)(true)
local l_0_6, l_0_7 = , pcall(l_0_3, (mp.readfile)(l_0_0((mp.readfile)((pe.foffset_va)((hstrlog[1]).VA) - 8, 8)), (mp.getfilesize)() - l_0_0((mp.readfile)((pe.foffset_va)((hstrlog[1]).VA) - 8, 8))))
local l_0_8 = nil
do
  local l_0_9 = l_0_3.Entries
  for l_0_13,l_0_14 in pairs(l_0_9) do
    local l_0_10 = {"System%.", "Microsoft%.", "mscorlib%.dll", "SQLite", "WindowsBase%.dll", "netstandard%.dll", "HtmlAgilityPack%.dll", "Newtonsoft%.Json%.dll", "NgrokSharp%.dll", "BouncyCastle%.Crypto%.dll", "ScaleHQ%.DotScreen%.dll", "Telegram%.Bot%.dll", "e_sqlite3%.dll"}
    for l_0_19,l_0_20 in pairs(l_0_10) do
      local l_0_16 = false
      -- DECOMPILER ERROR at PC75: Confused about usage of register: R20 in 'UnsetPending'

      if (string.find)(l_0_15.RelativePath, "^" .. "ScaleHQ%.DotScreen%.dll") ~= nil then
        l_0_16 = true
        break
      end
    end
    do
      do
        -- DECOMPILER ERROR at PC84: Confused about usage of register: R15 in 'UnsetPending'

        if not l_0_16 then
          (mp.vfo_add_filechunk)(l_0_15.Offset, l_0_15.Size, l_0_15.RelativePath, mp.ADD_VFO_TAKE_ACTION_ON_DAD)
          ;
          (mp.UfsSetMetadataBool)("DotNetCoreBundleExtracts", true, true)
        end
        -- DECOMPILER ERROR at PC100: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
  do return mp.INFECTED end
  -- DECOMPILER ERROR at PC105: freeLocal<0 in 'ReleaseLocals'

end

