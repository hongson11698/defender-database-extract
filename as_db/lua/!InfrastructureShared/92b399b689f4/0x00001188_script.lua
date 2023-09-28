-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\92b399b689f4\0x00001188_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(MpCommon.PathToWin32Path, (this_sigattrlog[1]).utf8p1)
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
local l_0_2 = (string.match)(l_0_1, "\\([^\\]+)$")
if l_0_2 == nil or l_0_2 == "" then
  return mp.CLEAN
end
local l_0_3 = {}
l_0_3[l_0_1] = 1
local l_0_4 = {}
local l_0_5 = table.insert
local l_0_6 = l_0_4
local l_0_7 = {}
l_0_7.NotePath = l_0_1
l_0_7.NoteName = l_0_2
l_0_5(l_0_6, l_0_7)
l_0_5 = ""
l_0_6 = ""
l_0_7 = 0
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil then
  l_0_0 = pcall(MpCommon.PathToWin32Path, (this_sigattrlog[3]).utf8p1)
  -- DECOMPILER ERROR at PC67: Overwrote pending register: R5 in 'AssignReg'

  if l_0_5 ~= nil and l_0_5 ~= "" then
    l_0_6 = (string.match)(l_0_5, "\\([^\\]+)$")
    if l_0_6 ~= nil and l_0_6 ~= "" and l_0_3[l_0_5] ~= 1 and l_0_2 == l_0_6 then
      l_0_7 = l_0_7 + 1
      l_0_3[l_0_5] = 1
      local l_0_8 = table.insert
      local l_0_9 = l_0_4
      local l_0_10 = {}
      l_0_10.NotePath = l_0_5
      l_0_10.NoteName = l_0_6
      l_0_8(l_0_9, l_0_10)
    end
  end
end
do
  -- DECOMPILER ERROR at PC113: Overwrote pending register: R5 in 'AssignReg'

  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
    l_0_0 = pcall(MpCommon.PathToWin32Path, (this_sigattrlog[4]).utf8p1)
    -- DECOMPILER ERROR at PC119: Overwrote pending register: R5 in 'AssignReg'

    if l_0_5 ~= nil and l_0_5 ~= "" then
      l_0_6 = (string.match)(l_0_5, "\\([^\\]+)$")
      if l_0_6 ~= nil and l_0_6 ~= "" and l_0_3[l_0_5] ~= 1 and l_0_2 == l_0_6 then
        l_0_7 = l_0_7 + 1
        l_0_3[l_0_5] = 1
        local l_0_11 = table.insert
        local l_0_12 = l_0_4
        local l_0_13 = {}
        l_0_13.NotePath = l_0_5
        l_0_13.NoteName = l_0_6
        l_0_11(l_0_12, l_0_13)
      end
    end
  end
  do
    -- DECOMPILER ERROR at PC165: Overwrote pending register: R5 in 'AssignReg'

    if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p1 ~= nil then
      l_0_0 = pcall(MpCommon.PathToWin32Path, (this_sigattrlog[5]).utf8p1)
      -- DECOMPILER ERROR at PC171: Overwrote pending register: R5 in 'AssignReg'

      if l_0_5 ~= nil and l_0_5 ~= "" then
        l_0_6 = (string.match)(l_0_5, "\\([^\\]+)$")
        if l_0_6 ~= nil and l_0_6 ~= "" and l_0_3[l_0_5] ~= 1 and l_0_2 == l_0_6 then
          l_0_7 = l_0_7 + 1
          l_0_3[l_0_5] = 1
          local l_0_14 = table.insert
          local l_0_15 = l_0_4
          local l_0_16 = {}
          l_0_16.NotePath = l_0_5
          l_0_16.NoteName = l_0_6
          l_0_14(l_0_15, l_0_16)
        end
      end
    end
    do
      if l_0_7 == 3 then
        (bm.add_related_string)("RansomHaltZ", safeJsonSerialize(l_0_4), bm.RelatedStringBMReport)
        extractRansomNote(l_0_1)
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

