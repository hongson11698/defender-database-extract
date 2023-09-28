-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPowerShellTrojanXorPES001\0x00001219_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 4096 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = tostring((mp.readfooter)(0, 4096))
if l_0_1 == nil then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
if (string.find)(l_0_1, "bxor", 1, true) == nil then
  return mp.CLEAN
end
local l_0_2 = (mp.readheader)(0, 4096)
if l_0_2 == nil then
  return mp.CLEAN
end
for l_0_6 in (string.gmatch)(l_0_1, "bxor%s+(0x%x%x)") do
  if l_0_6 ~= nil and l_0_6 ~= "" then
    local l_0_7 = ""
    local l_0_8 = ""
    for l_0_12 in (string.gmatch)(l_0_2, "([A-Za-z0-9+/=]+)") do
      if l_0_12 ~= nil and (string.len)(l_0_12) > 100 then
        l_0_7 = (MpCommon.Base64Decode)(l_0_12)
        if l_0_7 ~= nil and l_0_7 ~= "" then
          for l_0_16 in l_0_7:gmatch(".") do
            l_0_8 = l_0_8 .. (mp.bitxor)((string.byte)(l_0_16), l_0_6)
          end
        end
      end
    end
    do
      if l_0_8 ~= nil and l_0_8 ~= "" then
        local l_0_17 = (string.match)(l_0_8, "^77902320000")
        if l_0_17 ~= nil and l_0_17 ~= "" then
          (mp.set_mpattribute)("Lua:ShellBytesXorInB64.S001")
        end
      end
      local l_0_18 = ""
      for l_0_22 in (string.gmatch)(l_0_2, "%((%d+,%d+,%d+,%d+,%d+,%d+,%d+,[%d,]+)") do
        if l_0_22 ~= nil and (string.len)(l_0_22) > 100 then
          for l_0_26 in l_0_22:gmatch("%d+") do
            l_0_18 = l_0_18 .. (string.char)((mp.bitxor)(l_0_26, l_0_6))
          end
        end
      end
      if l_0_18 ~= nil and l_0_18 ~= "" then
        local l_0_27 = ""
        local l_0_28 = ""
        if (string.find)(l_0_18, "MZ", 1, true) ~= nil then
          l_0_27 = "Found"
        end
        if (string.find)(l_0_18, "This program cannot be run", 1, true) ~= nil then
          l_0_28 = "Found"
        end
        if l_0_27 ~= nil and l_0_28 ~= nil and l_0_27 ~= "" and l_0_28 ~= "" then
          (mp.set_mpattribute)("Lua:PEembedViaXOR.S002")
        end
      end
      do
        -- DECOMPILER ERROR at PC192: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC192: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC192: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end
for l_0_32 in (string.gmatch)(l_0_1, "bxor%s+(%d?%d%d?)") do
  if l_0_32 ~= nil and l_0_32 ~= "" then
    local l_0_33 = ""
    local l_0_34 = ""
    for l_0_38 in (string.gmatch)(l_0_2, "([A-Za-z0-9+/=]+)") do
      if l_0_38 ~= nil and (string.len)(l_0_38) > 100 then
        l_0_33 = (MpCommon.Base64Decode)(l_0_38)
        if l_0_33 ~= nil and l_0_33 ~= "" then
          for l_0_42 in l_0_33:gmatch(".") do
            l_0_34 = l_0_34 .. (mp.bitxor)((string.byte)(l_0_42), l_0_32)
          end
        end
      end
    end
    do
      if l_0_34 ~= nil and l_0_34 ~= "" then
        local l_0_43 = (string.match)(l_0_34, "^77902320000")
        if l_0_43 ~= nil and l_0_43 ~= "" then
          (mp.set_mpattribute)("Lua:ShellBytesXorInB64.S001")
        end
      end
      local l_0_44 = ""
      for l_0_48 in (string.gmatch)(l_0_2, "%((%d+,%d+,%d+,%d+,%d+,%d+,%d+,[%d,]+)") do
        if l_0_48 ~= nil and (string.len)(l_0_48) > 100 then
          for l_0_52 in l_0_48:gmatch("(%d+),") do
            l_0_44 = l_0_44 .. (string.char)((mp.bitxor)(l_0_52, l_0_32))
          end
        end
      end
      if l_0_44 ~= nil and l_0_44 ~= "" then
        local l_0_53 = ""
        local l_0_54 = ""
        if (string.find)(l_0_44, "MZ", 1, true) ~= nil then
          l_0_53 = "Found"
        end
        if (string.find)(l_0_44, "This program cannot be run", 1, true) ~= nil then
          l_0_54 = "Found"
        end
        if l_0_53 ~= nil and l_0_54 ~= nil and l_0_53 ~= "" and l_0_54 ~= "" then
          (mp.set_mpattribute)("Lua:PEembedViaXOR.S002")
        end
      end
      do
        -- DECOMPILER ERROR at PC335: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC335: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC335: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end
return mp.CLEAN

