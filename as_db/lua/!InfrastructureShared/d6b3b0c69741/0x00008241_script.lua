-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d6b3b0c69741\0x00008241_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC14: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[4]).matched then
  local l_0_0 = nil
else
  do
    do return mp.CLEAN end
    local l_0_1 = nil
    local l_0_2 = nil
    if (function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  for l_1_5 in (string.gmatch)(l_1_0, "[^%s]+") do
    (table.insert)(l_1_1, l_1_5)
  end
  local l_1_6 = nil
  for l_1_10 = 1, #l_1_1 do
    if l_1_1[l_1_10] == "/tr" then
      l_1_6 = l_1_1[l_1_10 + 1]
      break
    end
  end
  do
    return l_1_6
  end
end
)(l_0_1) ~= nil and (sysio.IsFileExists)((function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  for l_1_5 in (string.gmatch)(l_1_0, "[^%s]+") do
    (table.insert)(l_1_1, l_1_5)
  end
  local l_1_6 = nil
  for l_1_10 = 1, #l_1_1 do
    if l_1_1[l_1_10] == "/tr" then
      l_1_6 = l_1_1[l_1_10 + 1]
      break
    end
  end
  do
    return l_1_6
  end
end
)(l_0_1)) and checkFileLastWriteTime((function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  for l_1_5 in (string.gmatch)(l_1_0, "[^%s]+") do
    (table.insert)(l_1_1, l_1_5)
  end
  local l_1_6 = nil
  for l_1_10 = 1, #l_1_1 do
    if l_1_1[l_1_10] == "/tr" then
      l_1_6 = l_1_1[l_1_10 + 1]
      break
    end
  end
  do
    return l_1_6
  end
end
)(l_0_1), 3600) and not (mp.IsKnownFriendlyFile)((function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  for l_1_5 in (string.gmatch)(l_1_0, "[^%s]+") do
    (table.insert)(l_1_1, l_1_5)
  end
  local l_1_6 = nil
  for l_1_10 = 1, #l_1_1 do
    if l_1_1[l_1_10] == "/tr" then
      l_1_6 = l_1_1[l_1_10 + 1]
      break
    end
  end
  do
    return l_1_6
  end
end
)(l_0_1), true, false) then
      local l_0_3 = nil
      local l_0_4 = {"\\users\\public\\.+", "\\users\\.+\\appdata\\roaming\\.+", "\\users\\.+\\appdata\\local\\temp\\.+", "\\users\\.+\\appdata\\local\\temp\\7z.+", "\\users\\.+\\appdata\\local\\temp\\rar.+", "\\users\\.+\\appdata\\local\\temp\\bnz.+", "\\device\\cdrom.+", "\\device\\mup\\.+"}
      for l_0_8,l_0_9 in ipairs(l_0_4) do
        local l_0_5 = {"wscript.exe", "cscript.exe", "regsvr32.exe", "mshta.exe", "vbc.exe", "msbuild.exe", "wmic.exe", "cmstp.exe", "regasm.exe", "installutil.exe", "regsvcs.exe", "msxsl.exe", "xwizard.exe", "csc.exe", "winword.exe", "excel.exe", "powerpnt.exe"}
        -- DECOMPILER ERROR at PC79: Confused about usage of register: R9 in 'UnsetPending'

        if l_0_3:find("vbc.exe") and IsProcNameInParentProcessTree("BM", l_0_5) then
          return mp.INFECTED
        end
      end
    end
    do
      l_0_4 = mp
      l_0_4 = l_0_4.CLEAN
      return l_0_4
    end
  end
end

