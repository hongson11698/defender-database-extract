-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\17ab3964fd60a\0x00000895_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC10: Overwrote pending register: R0 in 'AssignReg'

do
  if this_sigattrlog[1] and (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC34: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not this_sigattrlog[2] or not (this_sigattrlog[2]).matched or this_sigattrlog[3]) and (this_sigattrlog[3]).matched then
      local l_0_1 = this_sigattrlog[2]
    else
    end
    -- DECOMPILER ERROR at PC58: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not this_sigattrlog[4] or not (this_sigattrlog[4]).matched or this_sigattrlog[5]) and (this_sigattrlog[5]).matched then
        local l_0_2 = this_sigattrlog[4]
      else
      end
      -- DECOMPILER ERROR at PC82: Overwrote pending register: R0 in 'AssignReg'

      do
        if (not this_sigattrlog[6] or not (this_sigattrlog[6]).matched or this_sigattrlog[7]) and (this_sigattrlog[7]).matched then
          local l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9 = this_sigattrlog[6]
        else
        end
        if this_sigattrlog[8] and (this_sigattrlog[8]).matched then
          do return mp.CLEAN end
          -- DECOMPILER ERROR at PC102: Confused about usage of register: R0 in 'UnsetPending'

          if not (this_sigattrlog[8]).matched or not (this_sigattrlog[8]).ppid then
            return mp.CLEAN
          end
          -- DECOMPILER ERROR at PC110: Confused about usage of register: R0 in 'UnsetPending'

          if (MpCommon.IsFriendlyProcess)((this_sigattrlog[8]).ppid) then
            return mp.CLEAN
          end
          -- DECOMPILER ERROR at PC117: Confused about usage of register: R0 in 'UnsetPending'

          local l_0_10 = nil
          if not (this_sigattrlog[8]).utf8p2 then
            return mp.CLEAN
          end
          -- DECOMPILER ERROR at PC127: Confused about usage of register: R1 in 'UnsetPending'

          local l_0_11 = nil
          ;
          (mp.TriggerScanResource)("ems", (string.format)("%s,address:%s,size:0", l_0_10.ppid, (this_sigattrlog[8]).utf8p2))
          local l_0_12 = nil
          AppendToRollingQueue((string.format)("susp_regions:%s", l_0_10.ppid), l_0_11)
          ;
          (bm.trigger_sig)("ScanSuspiciousRegions", l_0_12, l_0_10.ppid)
          return mp.INFECTED
        end
      end
    end
  end
end

