-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000006c8_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
    local l_0_1, l_0_2, l_0_3, l_0_4 = (this_sigattrlog[3]).utf8p1
  else
    do
      do return mp.CLEAN end
      -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

      if not l_0_1 then
        return mp.CLEAN
      end
      -- DECOMPILER ERROR at PC37: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

      if not (sysio.IsFileExists)(l_0_1) or (mp.IsKnownFriendlyFile)(l_0_1, true, false) then
        return mp.CLEAN
      end
      -- DECOMPILER ERROR at PC54: Confused about usage of register: R0 in 'UnsetPending'

      local l_0_5 = nil
      if not ((sysio.GetLastResult)()).Success or (sysio.GetFileLastWriteTime)(l_0_1) == 0 then
        return mp.CLEAN
      end
      local l_0_6 = (sysio.GetFileLastWriteTime)(l_0_1) / 10000000 - 11644473600
      if (MpCommon.GetCurrentTimeT)() <= l_0_6 then
        return mp.CLEAN
      end
      do
        local l_0_7 = nil
        if ((MpCommon.GetCurrentTimeT)() - l_0_6) / 60 <= 10080 then
          return mp.INFECTED
        end
        do return mp.CLEAN end
        -- DECOMPILER ERROR: 2 unprocessed JMP targets
      end
    end
  end
end

