-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\3b4b35ff0459d\0x00000a25_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[19]).matched and (this_sigattrlog[19]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  if not (this_sigattrlog[20]).matched or (this_sigattrlog[20]).utf8p1 == nil or (string.lower)((this_sigattrlog[20]).utf8p1) then
    local l_0_3 = nil
    if (bm.get_imagepath)() ~= nil and ((bm.get_imagepath)()):len() > 11 then
      local l_0_4 = nil
      if (((bm.get_imagepath)()):sub(-12)):lower() == "\\svchost.exe" then
        local l_0_5 = nil
        if (bm.get_current_process_startup_info)() ~= nil and ((bm.get_current_process_startup_info)()).command_line ~= nil then
          local l_0_6 = nil
          if ((string.lower)(((bm.get_current_process_startup_info)()).command_line)):find("gpsvc", 1, true) then
            return mp.CLEAN
          end
        end
      end
    end
    do
      do
        if l_0_3:find("windowspowershell\\v1.0\\", 1, true) or l_0_3:find("documents\\powershell\\", 1, true) then
          bm_AddRelatedFileFromCommandLine(l_0_3, nil, nil, 1)
          TrackPidAndTechniqueBM((this_sigattrlog[19]).ppid, "T1546.013", "posh_profile_modify")
          return mp.INFECTED
        end
        return mp.CLEAN
      end
    end
  end
end

