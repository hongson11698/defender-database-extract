-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000080fd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2, l_0_3 = (string.find)(l_0_1, "d0027073-ea64-42ca-8293-241186e9011f", 1, true)
if l_0_2 == nil or l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = (string.sub)(l_0_1, l_0_3 + 1, -1)
local l_0_5 = ""
local l_0_6 = 0
local l_0_7 = 1
for l_0_11 in (string.gmatch)(l_0_4, "%S+") do
  if l_0_7 == 1 then
    l_0_5 = l_0_11
  else
    if l_0_7 == 2 then
      l_0_6 = tonumber(l_0_11)
    end
  end
  l_0_7 = l_0_7 + 1
end
if l_0_7 < 3 then
  return mp.CLEAN
end
local l_0_12 = {}
-- DECOMPILER ERROR at PC83: No list found for R8 , SetList fails

-- DECOMPILER ERROR at PC86: Overwrote pending register: R9 in 'AssignReg'

-- DECOMPILER ERROR at PC88: Overwrote pending register: R10 in 'AssignReg'

if l_0_6 == 536870912 then
  ((mp.SMS_SCAN_ONCE).SMSAsyncScan)(mp.SMS_SCAN_LOW)
  return mp.CLEAN
end
for l_0_16,l_0_17 in ipairs(l_0_12) do
  -- DECOMPILER ERROR at PC99: Overwrote pending register: R14 in 'AssignReg'

  -- DECOMPILER ERROR at PC101: Overwrote pending register: R15 in 'AssignReg'

  -- DECOMPILER ERROR at PC102: Overwrote pending register: R16 in 'AssignReg'

  if l_0_17 == l_0_6 then
    ((mp.SMS_SCAN_LOW_ADV).RequestSmsOnProcess)(mp.SMS_SCAN_MED_ADV, mp.SMS_SCAN_HIGH_ADV)
    break
  end
end
do
  do
    do return mp.CLEAN end
    -- WARNING: undefined locals caused missing assignments!
  end
end

