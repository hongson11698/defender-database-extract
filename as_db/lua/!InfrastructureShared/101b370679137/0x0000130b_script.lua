-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\101b370679137\0x0000130b_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[5]).matched or (this_sigattrlog[6]).matched then
      local l_0_1, l_0_2 = (mp.GetExecutablesFromCommandLine)((this_sigattrlog[5]).utf8p1)
    end
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil then
      for l_0_6,l_0_7 in ipairs(l_0_1) do
        local l_0_3 = nil
        -- DECOMPILER ERROR at PC46: Confused about usage of register: R5 in 'UnsetPending'

        if (string.find)(R5_PC46, "/bash", -5, true) or (string.find)(R5_PC46, "/zsh", -4, true) or (string.find)(R5_PC46, "/wget", -5, true) or (string.find)(R5_PC46, "/curl", -5, true) or (string.find)(R5_PC46, "/sh", -3, true) or (string.find)(R5_PC46, "/python", -7, true) or (string.find)(R5_PC46, "/ruby", -5, true) or (string.find)(R5_PC46, "/dd", -3, true) or (string.find)(R5_PC46, "/xattr", -6, true) or (string.find)(R5_PC46, "/launchctl", -10, true) or (string.find)(R5_PC46, "/launchd", -8, true) or (string.find)(R5_PC46, "/syslogd", -8, true) or (string.find)(R5_PC46, "/sysdiagnose", -11, true) or (string.find)(R5_PC46, "/sandboxd", -9, true) or (string.find)(R5_PC46, "/usbagent", -9, true) or (string.find)(R5_PC46, "/trustd", -7, true) or (string.find)(R5_PC46, "/xpcproxy", -9, true) then
          if (sysio.IsFileExists)(R5_PC46) then
            (bm.add_related_file)(R5_PC46)
          end
          TrackPidAndTechniqueBM("BM", "T1036", "DefenseEvasion")
          return mp.INFECTED
        end
      end
    end
    do
      return mp.CLEAN
    end
  end
end

