-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\32b3ec25c539\0x000001c4_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
  local l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p2)
  if StringEndsWith(l_0_0, "\\ntds.dit") then
    if l_0_0:find("\\harddiskvolumeshadowcopy", 1, true) then
      return mp.CLEAN
    end
    if StringStartsWith(l_0_1, "\\\\.\\") or StringStartsWith(l_0_1, "\\\\?\\") or l_0_1:find("\\device\\", 1, true) or l_0_1:find("\\volume{", 1, true) then
      _ = pcall(MpCommon.PathToWin32Path, l_0_1)
    else
      -- DECOMPILER ERROR at PC88: Overwrote pending register: R1 in 'AssignReg'

      if StringStartsWith(l_0_1, "%") then
        _ = pcall(mp.ContextualExpandEnvironmentVariables, l_0_1)
      end
    end
    if l_0_1 ~= nil then
      local l_0_2, l_0_3 = l_0_1:match("^\\\\(.-)\\(.+)$")
      if l_0_2 ~= nil and l_0_3 ~= nil then
        if StringStartsWith(l_0_3, "c$\\") or StringStartsWith(l_0_3, "admin$\\") then
          AddPidSpecificTechniqueAndTactic("BM", "T1021.002", "ntdsexfil_to_adminshares")
        end
        AddPidSpecificTechniqueAndTactic("BM", "T1020", "exfil_to_networkshare")
        AppendToRollingQueue("SuspExfilServer", l_0_2, nil, 5000)
      end
      AppendToRollingQueue("SuspNtdsExfilPath", l_0_1, nil, 5000)
      TrackPidAndTechniqueBM("BM", "T1003.003", "ntdsexfil_from_shadowcopy")
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

