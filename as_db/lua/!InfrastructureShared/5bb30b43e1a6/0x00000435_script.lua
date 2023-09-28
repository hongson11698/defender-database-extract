-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb30b43e1a6\0x00000435_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  if mp.SIGATTR_LOG_SZ == 0 then
    return mp.CLEAN
  end
  local l_0_1, l_0_2 = pcall(MpCommon.PathToWin32Path, (this_sigattrlog[1]).utf8p1)
  if l_0_2 == nil or l_0_2 == "" then
    return mp.CLEAN
  end
  l_0_2 = (string.lower)(l_0_2)
  local l_0_3 = (string.match)(l_0_2, "\\([^\\]+)$")
  if l_0_3 == nil or l_0_3 == "" then
    return mp.CLEAN
  end
  local l_0_4 = {}
  l_0_4[l_0_2] = 1
  local l_0_5 = table.insert
  local l_0_6 = l_0_0
  local l_0_7 = {}
  l_0_7.NotePath = l_0_2
  l_0_7.NoteName = l_0_3
  l_0_5(l_0_6, l_0_7)
  l_0_5 = ""
  l_0_6 = ""
  l_0_7 = 1
  for l_0_11 = mp.SIGATTR_LOG_SZ, 1, -1 do
    local l_0_12 = sigattr_tail[l_0_11]
    if (l_0_12.attribute == 16384 or l_0_12.attribute == 16385 or l_0_12.attribute == 16386) and l_0_12.utf8p1 then
      l_0_1 = pcall(MpCommon.PathToWin32Path, l_0_12.utf8p1)
      -- DECOMPILER ERROR at PC95: Overwrote pending register: R5 in 'AssignReg'

      if l_0_5 ~= nil and l_0_5 ~= "" then
        l_0_6 = (string.match)(l_0_5, "\\([^\\]+)$")
        if l_0_6 ~= nil and l_0_6 ~= "" and l_0_4[l_0_5] ~= 1 and l_0_3 == l_0_6 then
          l_0_7 = l_0_7 + 1
          l_0_4[l_0_5] = 1
          local l_0_13 = table.insert
          local l_0_14 = l_0_0
          local l_0_15 = {}
          l_0_15.NotePath = l_0_5
          l_0_15.NoteName = l_0_6
          l_0_13(l_0_14, l_0_15)
          if l_0_7 >= 2 then
            l_0_13 = bm
            l_0_13 = l_0_13.add_related_string
            l_0_14 = "RansomHaltA"
            l_0_15 = safeJsonSerialize
            l_0_15 = l_0_15(l_0_0)
            l_0_13(l_0_14, l_0_15, bm.RelatedStringBMReport)
            l_0_13 = extractRansomNote
            l_0_14 = l_0_2
            l_0_13(l_0_14)
            l_0_13 = mp
            l_0_13 = l_0_13.INFECTED
            return l_0_13
          end
        end
      end
    end
  end
end
do
  return mp.CLEAN
end

