-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaOLEShellcodeCustom\0x00001218_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
-- DECOMPILER ERROR at PC17: Unhandled construct in 'MakeBoolean' P3

if not l_0_0 or ((l_0_0 > 7000 and l_0_0 < 16000) or l_0_0 <= 22000 or l_0_0 > 1600000) then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = nil
if l_0_0 > 7000 and l_0_0 < 22000 then
  l_0_1 = tostring((mp.readfile)(0, 7000))
else
  if l_0_0 > 1300000 and l_0_0 < 1600000 then
    l_0_1 = tostring((mp.readfile)(0, 20000))
  else
    l_0_1 = tostring((mp.readfile)(0, l_0_0))
  end
end
do
  if not (string.find)(l_0_1, "по\017Ю║\177\026\225", 1, true) or not l_0_1 then
    local l_0_4 = nil
    local l_0_2, l_0_3 = R3_PC75
    if not l_0_4 or not l_0_2 then
      l_0_3 = mp
      l_0_3 = l_0_3.CLEAN
      return l_0_3
    end
  end
  local l_0_5 = nil
  local l_0_6 = nil
  local l_0_7 = l_0_4
  local l_0_8 = {[184] = 5, [187] = 5, [185] = 5, [186] = 5, [190] = 5, [191] = 5, [188] = 5, [189] = 5, [203] = 1}
  if (mp.get_mpattribute)("SCRIPT:OLE.EquationCLSID") then
    l_0_5 = l_0_7 + 2048 + 14
  else
    if (mp.get_mpattribute)("SCPT:OLE.Equation3.A") then
      l_0_5 = l_0_7 + 33
    else
      return mp.CLEAN
    end
  end
  if l_0_5 >= l_0_0 or not l_0_8[l_0_1:byte(l_0_5)] then
    l_0_5 = (function(l_1_0, l_1_1)
  -- function num : 0_0 , upvalues : l_0_5, l_0_0, l_0_8
  do
    local l_1_2 = {}
    -- DECOMPILER ERROR at PC7: No list found for R2 , SetList fails

    -- DECOMPILER ERROR at PC8: Overwrote pending register: R3 in 'AssignReg'

    -- DECOMPILER ERROR at PC9: Overwrote pending register: R4 in 'AssignReg'

    for l_1_6,l_1_7 in (38)(78) do
      -- DECOMPILER ERROR at PC12: Overwrote pending register: R8 in 'AssignReg'

      if l_0_5 < l_0_0 and l_0_8[l_1_1:byte(l_0_5)] then
        return l_0_5
      end
    end
    do return nil end
    -- WARNING: undefined locals caused missing assignments!
  end
end
)(l_0_7, l_0_1)
    if not l_0_5 then
      return mp.CLEAN
    end
  end
  l_0_5 = l_0_5 + (l_0_8[l_0_1:byte(l_0_5)] or 0)
  -- DECOMPILER ERROR at PC162: Confused about usage of register: R8 in 'UnsetPending'

  if l_0_5 >= l_0_0 or not ({[129] = 6, [27] = 6, [247] = 2, [46] = 5, [45] = 5, [53] = 5, [5] = 5, [37] = 5})[l_0_1:byte(l_0_5)] then
    l_0_5 = (function(l_1_0, l_1_1)
  -- function num : 0_0 , upvalues : l_0_5, l_0_0, l_0_8
  do
    local l_1_2 = {}
    -- DECOMPILER ERROR at PC7: No list found for R2 , SetList fails

    -- DECOMPILER ERROR at PC8: Overwrote pending register: R3 in 'AssignReg'

    -- DECOMPILER ERROR at PC9: Overwrote pending register: R4 in 'AssignReg'

    for l_1_6,l_1_7 in (38)(78) do
      -- DECOMPILER ERROR at PC12: Overwrote pending register: R8 in 'AssignReg'

      if l_0_5 < l_0_0 and l_0_8[l_1_1:byte(l_0_5)] then
        return l_0_5
      end
    end
    do return nil end
    -- WARNING: undefined locals caused missing assignments!
  end
end
)(l_0_7, l_0_1)
    -- DECOMPILER ERROR at PC172: Confused about usage of register: R6 in 'UnsetPending'

    if not l_0_5 or not ({[129] = 6, [27] = 6, [247] = 2, [46] = 5, [45] = 5, [53] = 5, [5] = 5, [37] = 5})[l_0_1:byte(l_0_5)] then
      return mp.CLEAN
    end
  end
  -- DECOMPILER ERROR at PC181: Confused about usage of register: R6 in 'UnsetPending'

  l_0_5 = l_0_5 + (({[129] = 6, [27] = 6, [247] = 2, [46] = 5, [45] = 5, [53] = 5, [5] = 5, [37] = 5})[l_0_1:byte(l_0_5)] or 0)
  if l_0_5 >= l_0_0 or not ({[139] = 2})[l_0_1:byte(l_0_5)] then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC203: Confused about usage of register: R7 in 'UnsetPending'

  -- DECOMPILER ERROR at PC209: Confused about usage of register: R7 in 'UnsetPending'

  if l_0_5 + 3 >= l_0_0 or not ({[139] = 2})[l_0_1:byte(l_0_5 + 2)] and not ({[139] = 2})[l_0_1:byte(l_0_5 + 3)] then
    return mp.CLEAN
  end
  do
    local l_0_10 = nil
    if (mp.getfilename)() and ((string.find)((mp.getfilename)(), "->(Rtf", 1, true) ~= nil or (string.find)((mp.getfilename)(), "->xl/embeddings/oleObject", 1, true) ~= nil) then
      (mp.set_mpattribute)("Lua:OLE.ShellcodeInSuspiciousFile")
    end
    do return mp.INFECTED end
    -- DECOMPILER ERROR at PC245: freeLocal<0 in 'ReleaseLocals'

  end
end

