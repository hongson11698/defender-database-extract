-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\e8b3657a14cd\0x0000810e_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = nil
  end
  local l_0_2 = nil
  local l_0_3 = contains
  local l_0_4 = l_0_2
  l_0_3 = l_0_3(l_0_4, {" /i ", " /q ", " -i ", " -q "})
  if not l_0_3 then
    l_0_3 = mp
    l_0_3 = l_0_3.CLEAN
    return l_0_3
  end
  l_0_3 = string
  l_0_3 = l_0_3.find
  l_0_4 = l_0_2
  l_0_3 = l_0_3(l_0_4, "%\'?\"?https?%://(%d+%.%d+%.%d+%.%d+)")
  if not "%\'?\"?https?%://(%d+%.%d+%.%d+%.%d+)" then
    return mp.CLEAN
  end
  if not isPublicIP(R5_PC38) then
    return mp.CLEAN
  end
  local l_0_5, l_0_6, l_0_7 = , (string.find)(R5_PC38, "(https?%://%d+%.%d+%.%d+%.%d+.*%.msi)"), R5_PC38
  if not "(https?%://%d+%.%d+%.%d+%.%d+.*%.msi)" then
    return mp.CLEAN
  end
  local l_0_8 = nil
  local l_0_9 = {SIG_CONTEXT = "MSIExec_IPCheck", CONTENT_SOURCE = "BM", PROCESS_CONTEXT = "MSIEXEC.EXE", FILELESS = "true", CMDLINE_URL = "true", TAG = "INTERFLOW"}
  local l_0_10 = SafeGetUrlReputation
  l_0_10 = l_0_10({l_0_8}, l_0_9, false, 2000)
  if (l_0_10.urls)[l_0_8] and ((l_0_10.urls)[l_0_8]).determination == 2 and ((l_0_10.urls)[l_0_8]).confidence >= 60 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

