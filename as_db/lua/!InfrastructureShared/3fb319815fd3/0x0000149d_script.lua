-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\3fb319815fd3\0x0000149d_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  -- DECOMPILER ERROR at PC28: Confused about usage of register: R0 in 'UnsetPending'

  if not (this_sigattrlog[2]).matched or (mp.GetExecutablesFromCommandLine)((this_sigattrlog[2]).utf8p2) ~= nil then
    for l_0_7,l_0_8 in ipairs((mp.GetExecutablesFromCommandLine)((this_sigattrlog[2]).utf8p2)) do
      local l_0_4 = nil
      -- DECOMPILER ERROR at PC33: Confused about usage of register: R5 in 'UnsetPending'

      if (string.find)(R5_PC33, ".json", -5, true) or (string.find)(R5_PC33, ".yaml", -5, true) or (string.find)(R5_PC33, ".xml", -4, true) or (string.find)(R5_PC33, ".jpg", -4, true) or (string.find)(R5_PC33, ".gz", -3, true) or (string.find)(R5_PC33, "/etc/", 1, true) or (string.find)(R5_PC33, "/boot/grub/", 1, true) or (string.find)(R5_PC33, "/dev/shm/", 1, true) or (string.find)(R5_PC33, "/var/run/", 1, true) then
        if (sysio.IsFileExists)(R5_PC33) then
          (bm.add_related_file)(R5_PC33)
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

