-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\cdd741506b0a\0x000006f9_luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0)
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

local l_0_1 = (mp.GetScannedPPID)()
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = (MpCommon.GetProcessElevationAndIntegrityLevel)(l_0_1)
if l_0_2 and MpCommon.SECURITY_MANDATORY_SYSTEM_RID <= l_0_2.IntegrityLevel then
  return mp.CLEAN
end
local l_0_3 = (string.lower)((mp.GetProcessCommandLine)(l_0_1))
if not l_0_3 then
  return mp.CLEAN
end
local l_0_4 = l_0_0(l_0_3)
if l_0_4 ~= nil and (sysio.IsFileExists)(l_0_4) and checkFileLastWriteTime(l_0_4, 3600) and not (mp.IsKnownFriendlyFile)(l_0_4, true, false) then
  local l_0_5 = {}
  -- DECOMPILER ERROR at PC69: No list found for R5 , SetList fails

  -- DECOMPILER ERROR at PC70: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC71: Overwrote pending register: R7 in 'AssignReg'

  for l_0_9,l_0_10 in ("\\users\\public\\.+")("\\users\\.+\\appdata\\roaming\\.+") do
    -- DECOMPILER ERROR at PC74: Overwrote pending register: R12 in 'AssignReg'

    -- DECOMPILER ERROR at PC74: Overwrote pending register: R11 in 'AssignReg'

    -- DECOMPILER ERROR at PC75: Overwrote pending register: R13 in 'AssignReg'

    if ("\\users\\.+\\appdata\\local\\temp\\bnz.+")("\\device\\cdrom.+", "\\device\\mup\\.+") then
      return mp.INFECTED
    end
  end
end
do
  do
    -- DECOMPILER ERROR at PC85: Overwrote pending register: R5 in 'AssignReg'

    do return l_0_5 end
    -- WARNING: undefined locals caused missing assignments!
  end
end

