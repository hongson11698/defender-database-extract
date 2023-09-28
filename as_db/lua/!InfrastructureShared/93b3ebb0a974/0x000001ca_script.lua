-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\93b3ebb0a974\0x000001ca_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil and (this_sigattrlog[2]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[2]).utf8p1)
  local l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p2)
  local l_0_2 = (bm.get_current_process_startup_info)()
  local l_0_3 = (string.lower)(l_0_2.command_line)
  if (string.find)(l_0_3, "\\program files\\", 1, true) or (string.find)(l_0_3, "srtasks.exe", 1, true) or (string.find)(l_0_3, "rstrui.exe", 1, true) or (string.find)(l_0_3, "executescheduledsppcreation", 1, true) or (string.find)(l_0_3, "wbengine.exe", 1, true) or (string.find)(l_0_3, "veeam", 1, true) or (string.find)(l_0_3, "beremote", 1, true) then
    return mp.CLEAN
  end
  if StringEndsWith(l_0_0, "\\security") then
    if StringStartsWith(l_0_1, "\\\\.\\") or StringStartsWith(l_0_1, "\\\\?\\") or l_0_1:find("\\device\\", 1, true) or l_0_1:find("\\volume{", 1, true) then
      _ = pcall(MpCommon.PathToWin32Path, l_0_1)
    else
      -- DECOMPILER ERROR at PC151: Overwrote pending register: R1 in 'AssignReg'

      if StringStartsWith(l_0_1, "%") then
        _ = pcall(mp.ContextualExpandEnvironmentVariables, l_0_1)
      end
    end
    if l_0_1 ~= nil then
      local l_0_4, l_0_5 = l_0_1:match("^\\\\(.-)\\(.+)$")
      if l_0_4 ~= nil and l_0_5 ~= nil then
        if StringStartsWith(l_0_5, "c$\\") or StringStartsWith(l_0_5, "admin$\\") then
          AddPidSpecificTechniqueAndTactic("BM", "T1021.002", "sechiveexfil_to_adminshares")
        end
        AddPidSpecificTechniqueAndTactic("BM", "T1020", "exfil_to_networkshare")
        AppendToRollingQueue("SuspExfilServer", l_0_4, nil, 5000)
      end
      AppendToRollingQueue("SuspSyshiveExfilPath", l_0_1, nil, 5000)
      TrackPidAndTechniqueBM("BM", "T1003.002", "sechiveexfil_from_shadowcopy")
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

