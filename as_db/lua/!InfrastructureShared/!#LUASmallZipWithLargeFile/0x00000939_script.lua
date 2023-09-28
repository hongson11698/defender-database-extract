-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUASmallZipWithLargeFile\0x00000939_luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 128 or mp.FOOTERPAGE_SZ < 22 then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
local l_0_1 = 276
if l_0_0 <= l_0_1 then
  return mp.CLEAN
end
if l_0_0 > 10000000 then
  return mp.CLEAN
end
local l_0_2 = mp.FOOTERPAGE_SZ - 21
if (mp.readu_u32)(footerpage, l_0_2) ~= 101010256 then
  (mp.readprotection)(false)
  local l_0_3 = (mp.readfile)(l_0_0 - l_0_1, l_0_1)
  ;
  (mp.readprotection)(true)
  l_0_2 = (string.find)(l_0_3, "PK\005\006", 1, true)
  if l_0_3 == nil then
    return mp.CLEAN
  end
  if l_0_2 == nil then
    return mp.CLEAN
  end
  l_0_2 = l_0_2 + mp.FOOTERPAGE_SZ - l_0_1
end
do
  local l_0_4 = (mp.readu_u32)(footerpage, l_0_2 + 12)
  local l_0_5 = (mp.readu_u32)(footerpage, l_0_2 + 16)
  if l_0_0 < l_0_5 + l_0_4 then
    return mp.CLEAN
  end
  local l_0_6 = 338
  local l_0_7 = (mp.readu_u16)(footerpage, l_0_2 + 10)
  local l_0_8 = 700
  if l_0_8 < l_0_7 then
    l_0_7 = l_0_8
  end
  if l_0_6 * l_0_7 < l_0_4 then
    return mp.CLEAN
  end
  ;
  (mp.readprotection)(false)
  local l_0_9 = (mp.readfile)(l_0_5, l_0_4)
  ;
  (mp.readprotection)(true)
  if l_0_9 == nil then
    return mp.CLEAN
  end
  local l_0_10 = 0
  local l_0_11 = 1
  local l_0_12 = 80
  local l_0_13 = 0
  if (mp.readu_u32)(l_0_9, l_0_11) ~= 33639248 then
    return mp.CLEAN
  end
  local l_0_14 = {}
  l_0_14[".doc"] = ""
  l_0_14[".docm"] = ""
  l_0_14[".dotm"] = ""
  l_0_14[".dot"] = ""
  l_0_14[".xls"] = ""
  l_0_14[".xlsm"] = ""
  l_0_14[".ppt"] = ""
  l_0_14[".pptm"] = ""
  l_0_14[".exe"] = ""
  l_0_14[".dll"] = ""
  l_0_14[".scr"] = ""
  while 1 do
    if l_0_11 ~= nil then
      l_0_10 = l_0_10 + 1
      local l_0_15 = (mp.readu_u16)(l_0_9, l_0_11 + 28)
      local l_0_16 = (string.sub)(l_0_9, l_0_11 + 46, l_0_11 + 46 + l_0_15 - 1)
      if l_0_16 ~= nil then
        l_0_16 = (string.lower)(l_0_16)
      end
      local l_0_17 = l_0_16:sub(-5)
      local l_0_18 = l_0_17:sub(-4)
      if l_0_14[l_0_18] ~= nil or l_0_14[l_0_17] ~= nil then
        local l_0_19 = (mp.readu_u32)(l_0_9, l_0_11 + 24)
        local l_0_20 = (mp.readu_u32)(l_0_9, l_0_11 + 20)
        if l_0_19 > 268435456 and l_0_20 > 0 and l_0_12 < l_0_19 / l_0_20 then
          l_0_13 = l_0_19 / l_0_20
          ;
          (mp.set_mpattribute)("LUA:SmallZipWithLargeFile")
        end
      end
      do
        do
          local l_0_21 = l_0_11 + 46 + l_0_15 + 36
          l_0_11 = nil
          if l_0_21 < l_0_4 and (mp.readu_u32)(l_0_9, l_0_21) == 33639248 then
            l_0_11 = l_0_21
          else
            break
          end
          if l_0_7 < l_0_10 then
            break
          end
          -- DECOMPILER ERROR at PC222: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC222: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC222: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  if l_0_13 >= 100 then
    (mp.set_mpattribute)("//ZipCompressionRatioGTE100")
  end
  if l_0_13 >= 250 then
    (mp.set_mpattribute)("//ZipCompressionRatioGTE250")
  end
  if l_0_13 >= 500 then
    (mp.set_mpattribute)("//ZipCompressionRatioGTE500")
  end
  if l_0_13 >= 1000 then
    (mp.set_mpattribute)("//ZipCompressionRatioGTE1000")
  end
  return mp.CLEAN
end

