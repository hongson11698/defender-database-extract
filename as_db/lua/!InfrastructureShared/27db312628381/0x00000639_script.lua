-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\27db312628381\0x00000639_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).wp2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC52: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[9]).matched or (this_sigattrlog[9]).wp2 == nil or (this_sigattrlog[10]).matched) and (this_sigattrlog[10]).wp2 ~= nil then
      local l_0_1 = (string.lower)((this_sigattrlog[9]).utf8p2)
    else
    end
    -- DECOMPILER ERROR at PC88: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[11]).matched or (this_sigattrlog[11]).wp2 == nil or (this_sigattrlog[12]).matched) and (this_sigattrlog[12]).wp2 ~= nil then
        local l_0_2 = (string.lower)((this_sigattrlog[11]).utf8p2)
      else
      end
      -- DECOMPILER ERROR at PC124: Overwrote pending register: R0 in 'AssignReg'

      do
        if (not (this_sigattrlog[13]).matched or (this_sigattrlog[13]).wp2 == nil or (this_sigattrlog[14]).matched) and (this_sigattrlog[14]).wp2 ~= nil then
          local l_0_3, l_0_4 = (string.lower)((this_sigattrlog[13]).utf8p2)
        else
        end
        if (this_sigattrlog[15]).matched and (this_sigattrlog[15]).wp2 ~= nil then
          local l_0_5 = (string.lower)((this_sigattrlog[15]).utf8p2)
          if (bm.get_current_process_startup_info)() == nil or ((bm.get_current_process_startup_info)()).ppid == nil then
            return mp.CLEAN
          end
          if isParentPackageManager(((bm.get_current_process_startup_info)()).ppid, true) then
            return mp.CLEAN
          end
          if l_0_5 then
            if (this_sigattrlog[9]).matched and (string.find)(l_0_5, "copy-as-is", 1, true) and (string.find)(l_0_5, "/usr/share/rear", 1, true) then
              return mp.CLEAN
            end
            TrackPidAndTechniqueBM("BM", "T1048", "Exfiltration_Archive")
            addRelatedProcess()
            reportRelatedBmHits()
            return mp.INFECTED
          end
          return mp.CLEAN
        end
      end
    end
  end
end

