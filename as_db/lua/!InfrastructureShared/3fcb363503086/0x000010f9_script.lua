-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\3fcb363503086\0x000010f9_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC17: Overwrote pending register: R1 in 'AssignReg'

do
  if (this_sigattrlog[20]).matched and (this_sigattrlog[20]).utf8p1 ~= nil and (this_sigattrlog[20]).ppid ~= nil then
    local l_0_1, l_0_3 = nil, nil
    l_0_1 = (string.lower)((this_sigattrlog[20]).utf8p1)
    local l_0_0, l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC27: Confused about usage of register: R1 in 'UnsetPending'

  -- DECOMPILER ERROR at PC30: Confused about usage of register: R1 in 'UnsetPending'

  do
    if l_0_1 and l_0_3 then
      local l_0_4 = nil
      if (GetTacticsTableForPid(l_0_3)).winrshost_childproc or (GetTacticsTableForPid(l_0_3)).amsitampering or (GetTacticsTableForPid(l_0_3)).wsmprovhost_childproc or (GetTacticsTableForPid(l_0_3)).wmi_childproc or (GetTacticsTableForPid(l_0_3)).remotedropexe_childproc or (GetTacticsTableForPid(l_0_3)).python_childproc or (GetTacticsTableForPid(l_0_3)).rundll32_childproc or (GetTacticsTableForPid(l_0_3)).wscript_childproc or (GetTacticsTableForPid(l_0_3)).cscript_childproc or (GetTacticsTableForPid(l_0_3)).mshta_childproc or (GetTacticsTableForPid(l_0_3)).webshell_childproc or (GetTacticsTableForPid(l_0_3)).exec_remotedroppedscript_a or (GetTacticsTableForPid(l_0_3)).folderguard_blk or (GetTacticsTableForPid(l_0_3)).folderguard_folder_blk then
        bm_AddRelatedFileFromCommandLine(l_0_4, nil, nil, 1)
        TrackPidAndTechniqueBM((this_sigattrlog[20]).ppid, "T1546.013", "posh_profile_create")
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

