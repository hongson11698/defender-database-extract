-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFLuaNewlyWrittenPSExecViaSmb\0x0000114d_luac 

-- params : ...
-- function num : 0
do
  local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)) or ""
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == "" then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC20: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2 = nil
  local l_0_3 = nil
  if not GetRollingQueueKeyValue("rq_fileremotedrop", (MpCommon.Base64Encode)(l_0_0)) then
    return mp.CLEAN
  end
  l_0_2 = (MpCommon.PathToWin32Path)(l_0_2)
  if l_0_2 == "" or l_0_2 == nil then
    return mp.CLEAN
  end
  local l_0_4 = nil
  local l_0_5 = (MpCommon.GetOriginalFileName)(l_0_2)
  if l_0_5 == "psexesvc.exe" or l_0_5 == "psexec.c" then
    AppendToRollingQueue("renamed_psexec", l_0_4, l_0_3, 600, 1)
  end
  if not true then
    local l_0_6 = nil
    if GetRollingQueueKeyValue("renamed_psexec", l_0_4) == l_0_3 then
      return mp.CLEAN
    end
    local l_0_7 = nil
    if contains(l_0_2, {"\\windows\\temp\\ot-", "systeminsights.capabilities.anomalydetection"}) then
      return mp.CLEAN
    end
    local l_0_8 = nil
    if contains(l_0_2, {":\\programdata\\", ":\\perflogs\\", ":\\windows\\help\\", ":\\windows\\debug\\", ":\\windows\\tapi\\", ":\\windows\\temp\\", ":\\wmpub\\", ":\\intel\\", "\\music\\", "\\users\\public\\"}) then
      return mp.INFECTED
    end
  end
  do
    return mp.CLEAN
  end
end

