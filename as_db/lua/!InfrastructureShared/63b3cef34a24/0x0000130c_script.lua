-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\63b3cef34a24\0x0000130c_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1, l_0_2 = (mp.GetExecutablesFromCommandLine)((this_sigattrlog[2]).utf8p2)
    end
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil then
      for l_0_6,l_0_7 in ipairs(l_0_1) do
        local l_0_3 = nil
        -- DECOMPILER ERROR at PC46: Confused about usage of register: R5 in 'UnsetPending'

        if (string.find)(R5_PC46, ".json", -5, true) or (string.find)(R5_PC46, ".yaml", -5, true) or (string.find)(R5_PC46, ".xml", -4, true) or (string.find)(R5_PC46, ".jpg", -4, true) or (string.find)(R5_PC46, ".gz", -3, true) or (string.find)(R5_PC46, ".pdf", -4, true) or (string.find)(R5_PC46, ".mp3", -4, true) or (string.find)(R5_PC46, ".doc", -4, true) or (string.find)(R5_PC46, ".docx", -5, true) or (string.find)(R5_PC46, ".jpg", -4, true) or (string.find)(R5_PC46, ".png", -4, true) or (string.find)(R5_PC46, ".nib", -4, true) or (string.find)(R5_PC46, ".rtf", -4, true) or (string.find)(R5_PC46, ".xls", -4, true) or (string.find)(R5_PC46, ".txt", -4, true) or (string.find)(R5_PC46, ".wmv", -4, true) or (string.find)(R5_PC46, "/etc/", 1, true) or (string.find)(R5_PC46, "/tmp/", 1, true) or (string.find)(R5_PC46, "/var/", 1, true) or (string.find)(R5_PC46, "/users/shared", 1, true) then
          if (sysio.IsFileExists)(R5_PC46) then
            (bm.add_related_file)(R5_PC46)
          end
          TrackPidAndTechniqueBM("BM", "T1222", "DefenseEvasion")
          return mp.INFECTED
        end
      end
    end
    do
      return mp.CLEAN
    end
  end
end

