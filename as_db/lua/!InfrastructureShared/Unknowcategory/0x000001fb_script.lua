-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000001fb_luac 

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
      local l_0_1 = ((this_sigattrlog[2]).utf8p1):match("(%w+%.exe)$")
    else
    end
    -- DECOMPILER ERROR at PC63: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[4]).matched or (this_sigattrlog[5]).matched then
        local l_0_2 = ((this_sigattrlog[4]).utf8p1):match("(%w+%.exe)$")
      end
      -- DECOMPILER ERROR at PC64: Confused about usage of register: R0 in 'UnsetPending'

      if not l_0_2 then
        return mp.CLEAN
      end
      local l_0_3 = nil
      if (bm.get_current_process_startup_info)() == nil then
        return mp.CLEAN
      end
      ;
      (MpCommon.AddProcessAttribute)(((bm.get_current_process_startup_info)()).ppid, "PFApp_Parent", l_0_3, true)
      return mp.CLEAN
    end
  end
end

