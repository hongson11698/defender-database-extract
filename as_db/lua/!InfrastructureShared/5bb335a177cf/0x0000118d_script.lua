-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb335a177cf\0x0000118d_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).utf8p1 ~= nil then
  if mp.SIGATTR_LOG_SZ == 0 then
    return mp.CLEAN
  end
  local l_0_0, l_0_1 = pcall(MpCommon.PathToWin32Path, (this_sigattrlog[1]).utf8p1)
  if l_0_1 == nil or l_0_1 == "" then
    return mp.CLEAN
  end
  l_0_1 = (string.lower)(l_0_1)
  local l_0_2 = (string.match)(l_0_1, "\\([^\\]+)$")
  if l_0_2 == nil or l_0_2 == "" then
    return mp.CLEAN
  end
  if l_0_2:find("-- how to open these files --.txt", 1, true) or l_0_2:find("notags.html", 1, true) or l_0_2:find("nocomment.html", 1, true) then
    return mp.CLEAN
  end
  local l_0_3 = (sysio.GetFileSize)(l_0_1)
  local l_0_4 = {}
  l_0_4[l_0_1] = 1
  local l_0_5 = {}
  local l_0_6 = table.insert
  local l_0_7 = l_0_5
  local l_0_8 = {}
  l_0_8.NotePath = l_0_1
  l_0_8.NoteName = l_0_2
  l_0_8.NoteSize = l_0_3
  l_0_6(l_0_7, l_0_8)
  l_0_6 = ""
  l_0_7 = ""
  l_0_8 = 1
  local l_0_9 = 0
  for l_0_13 = mp.SIGATTR_LOG_SZ, 1, -1 do
    local l_0_14 = sigattr_head[l_0_13]
    if (l_0_14.attribute == 16384 or l_0_14.attribute == 16385 or l_0_14.attribute == 16386) and l_0_14.utf8p1 then
      l_0_0 = pcall(MpCommon.PathToWin32Path, l_0_14.utf8p1)
      -- DECOMPILER ERROR at PC120: Overwrote pending register: R6 in 'AssignReg'

      if l_0_6 ~= nil and l_0_6 ~= "" then
        l_0_7 = (string.match)(l_0_6, "\\([^\\]+)$")
        if l_0_7 ~= nil and l_0_7 ~= "" then
          l_0_9 = (sysio.GetFileSize)(l_0_6)
          if l_0_9 ~= nil then
            if l_0_4[l_0_6] ~= 1 and l_0_2 == l_0_7 and l_0_9 == l_0_3 then
              l_0_8 = l_0_8 + 1
              l_0_4[l_0_6] = 1
            end
            local l_0_15 = table.insert
            local l_0_16 = l_0_5
            local l_0_17 = {}
            l_0_17.NotePath = l_0_6
            l_0_17.NoteName = l_0_7
            l_0_17.NoteSize = l_0_9
            l_0_15(l_0_16, l_0_17)
            if l_0_8 >= 2 then
              l_0_15 = bm
              l_0_15 = l_0_15.add_related_string
              l_0_16 = "RansomHaltY"
              l_0_17 = safeJsonSerialize
              l_0_17 = l_0_17(l_0_5)
              l_0_15(l_0_16, l_0_17, bm.RelatedStringBMReport)
              l_0_15 = extractRansomNote
              l_0_16 = l_0_1
              l_0_15(l_0_16)
              l_0_15 = mp
              l_0_15 = l_0_15.INFECTED
              return l_0_15
            end
          end
        end
      end
    end
  end
end
do
  return mp.CLEAN
end

