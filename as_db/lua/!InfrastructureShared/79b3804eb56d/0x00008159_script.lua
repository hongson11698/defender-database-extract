-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\79b3804eb56d\0x00008159_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2, l_0_3, l_0_4 = , (string.find)(l_0_0, "%.downloadstring%(%\'?\"?https?%://(%d+%.%d+%.%d+%.%d+)%:%d+/%w+")
  if not "%.downloadstring%(%\'?\"?https?%://(%d+%.%d+%.%d+%.%d+)%:%d+/%w+" then
    return mp.CLEAN
  end
  if not isPublicIP(R5_PC29) then
    return mp.CLEAN
  end
  if not isIEXfound(R5_PC29) then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC45: Overwrote pending register: R5 in 'AssignReg'

  local l_0_5, l_0_6, l_0_7 = , (string.find)(R5_PC29, "%.downloadstring%(%\'?\"?(https?%://%d+%.%d+%.%d+%.%d+%:%d+)/%w+"), R5_PC29
  if not "%.downloadstring%(%\'?\"?(https?%://%d+%.%d+%.%d+%.%d+%:%d+)/%w+" then
    return mp.CLEAN
  end
  local l_0_8 = nil
  local l_0_9 = {SIG_CONTEXT = "PSHELL", CONTENT_SOURCE = "POWERSHELL", PROCESS_CONTEXT = "POWERSHELL.EXE", FILELESS = "true", CMDLINE_URL = "true", BREAK_AT_FIRST_HIT_MALWARE = "40", TAG = "INTERFLOW"}
  local l_0_10 = SafeGetUrlReputation
  l_0_10 = l_0_10({l_0_8}, l_0_9, false, 2000)
  if (l_0_10.urls)[l_0_8] and ((l_0_10.urls)[l_0_8]).determination == 2 and ((l_0_10.urls)[l_0_8]).confidence >= 60 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

