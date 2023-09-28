-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f8d_luac 

-- params : ...
-- function num : 0
local l_0_1 = nil
if (this_sigattrlog[4]).matched then
  local l_0_0 = 100000000
  l_0_0 = 10000000
else
  do
    -- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC26: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC34: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC43: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC44: Overwrote pending register: R1 in 'AssignReg'

    if ((not (this_sigattrlog[5]).matched or (this_sigattrlog[6]).matched) and not (this_sigattrlog[7]).matched) or (this_sigattrlog[8]).matched then
      do return mp.CLEAN end
      if not l_0_1.utf8p1 then
        return mp.CLEAN
      end
      local l_0_2 = 200000
      -- DECOMPILER ERROR at PC60: Confused about usage of register: R2 in 'UnsetPending'

      -- DECOMPILER ERROR at PC66: Confused about usage of register: R2 in 'UnsetPending'

      if l_0_1.utf8p1 ~= nil and (sysio.IsFileExists)(l_0_1.utf8p1) then
        local l_0_3 = nil
        if l_0_2 < (sysio.GetFileSize)(l_0_1.utf8p1) then
          local l_0_4 = nil
          ;
          (bm.request_SMS)(((bm.get_current_process_startup_info)()).ppid, "M")
          ;
          (bm.add_action)("SmsAsyncScanEvent", 1)
          return mp.INFECTED
        end
      end
      do
        return mp.CLEAN
      end
    end
  end
end

