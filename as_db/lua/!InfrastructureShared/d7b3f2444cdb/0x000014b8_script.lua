-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d7b3f2444cdb\0x000014b8_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).wp2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10, l_0_11, l_0_12, l_0_13, l_0_14 = nil
  else
  end
  -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC50: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC57: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC64: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC71: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC78: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC85: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC94: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC103: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC112: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC125: Unhandled construct in 'MakeBoolean' P1

  if (((this_sigattrlog[5]).matched and (this_sigattrlog[5]).wp2 ~= nil and (string.lower)((this_sigattrlog[5]).utf8p2) == nil) or not (string.find)((string.lower)((this_sigattrlog[5]).utf8p2), "-perm", 1, true) or (not (string.match)((string.lower)((this_sigattrlog[5]).utf8p2), "(%s)[-/](0*)200[07]") and not (string.match)((string.lower)((this_sigattrlog[5]).utf8p2), "(%s)-(0*)400[07]") and not (string.match)((string.lower)((this_sigattrlog[5]).utf8p2), "(%s)-(0*)6000") and not (string.match)((string.lower)((this_sigattrlog[5]).utf8p2), "(%s)-(0*)222") and not (string.match)((string.lower)((this_sigattrlog[5]).utf8p2), "(%s)-(0*)0002") and not (string.find)((string.lower)((this_sigattrlog[5]).utf8p2), "u=s", 1, true) and not (string.find)((string.lower)((this_sigattrlog[5]).utf8p2), "g=s", 1, true) and not (string.find)((string.lower)((this_sigattrlog[5]).utf8p2), "-o w", 1, true) and not (string.find)((string.lower)((this_sigattrlog[5]).utf8p2), "-o x", 1, true)) or checkTaint() == true) then
    return mp.INFECTED
  end
  -- DECOMPILER ERROR at PC129: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC138: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC145: Confused about usage of register: R0 in 'UnsetPending'

  if (string.find)((string.lower)((this_sigattrlog[5]).utf8p2), " -writable ", 1, true) and ((string.match)((string.lower)((this_sigattrlog[5]).utf8p2), "(%s)-type%s+[fd]") or (string.find)((string.lower)((this_sigattrlog[5]).utf8p2), "-not -user", 1, true)) and checkTaint() then
    return mp.INFECTED
  end
  return mp.CLEAN
end

