-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanWin32TripWaryD!dha\0x0000122c_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("ALF:Trojan:Win32/TripWary.C!dha") then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 20 or l_0_0 > 1024 then
  return mp.CLEAN
end
uuidToBytes = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = (string.rep)(" ", 16)
  local l_1_2, l_1_3, l_1_4, l_1_5, l_1_6, l_1_7, l_1_8, l_1_9, l_1_10, l_1_11, l_1_12 = l_1_0:match(".(%x%x%x%x%x%x%x%x).(%x%x%x%x).(%x%x%x%x).(%x%x)(%x%x).(%x%x)(%x%x)(%x%x)(%x%x)(%x%x)(%x%x)")
  ;
  (mp.writeu_u32)(l_1_1, 1, tonumber(l_1_2, 16))
  ;
  (mp.writeu_u16)(l_1_1, 5, tonumber(l_1_3, 16))
  ;
  (mp.writeu_u16)(l_1_1, 7, tonumber(l_1_4, 16))
  ;
  (mp.writeu_u8)(l_1_1, 9, tonumber(l_1_5, 16))
  ;
  (mp.writeu_u8)(l_1_1, 10, tonumber(l_1_6, 16))
  ;
  (mp.writeu_u8)(l_1_1, 11, tonumber(l_1_7, 16))
  ;
  (mp.writeu_u8)(l_1_1, 12, tonumber(l_1_8, 16))
  ;
  (mp.writeu_u8)(l_1_1, 13, tonumber(l_1_9, 16))
  ;
  (mp.writeu_u8)(l_1_1, 14, tonumber(l_1_10, 16))
  ;
  (mp.writeu_u8)(l_1_1, 15, tonumber(l_1_11, 16))
  ;
  (mp.writeu_u8)(l_1_1, 16, tonumber(l_1_12, 16))
  return l_1_1
end

;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, 16)
local l_0_2 = (mp.readfile)(16, l_0_0 - 16)
;
(mp.readprotection)(true)
if l_0_2 ~= nil then
  local l_0_3 = (sysio.RegOpenKey)("HKLM\\SYSTEM\\HardwareConfig")
  if l_0_3 ~= nil then
    local l_0_4 = (sysio.GetRegValueAsString)(l_0_3, "LastConfig")
    if l_0_4 ~= nil and l_0_4:len() == 38 then
      local l_0_5 = uuidToBytes(l_0_4)
      for l_0_9 = 1, #l_0_5 do
        (mp.writeu_u8)(l_0_5, l_0_9, (string.byte)(l_0_5, l_0_9) + (l_0_9 - 1))
      end
      local l_0_10 = ""
      local l_0_11 = 0
      local l_0_12 = 0
      local l_0_13 = 0
      local l_0_14 = 16
      for l_0_18 = 1, #l_0_2 do
        l_0_11 = (string.byte)(l_0_2, l_0_18)
        l_0_12 = (string.byte)(l_0_5, (l_0_18 - 1) % l_0_14 + 1)
        l_0_13 = (mp.bitxor)(l_0_11, l_0_12)
        l_0_10 = l_0_10 .. (string.char)(l_0_13)
      end
      if l_0_1 == (crypto.MD5Buffer)(l_0_10, 0, #l_0_10) then
        l_0_10 = (MpCommon.Base64Encode)(l_0_10)
        ;
        (mp.set_mpattribute)((string.format)("MpInternal_researchdata=KazuarConfigData=%s", l_0_10))
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

