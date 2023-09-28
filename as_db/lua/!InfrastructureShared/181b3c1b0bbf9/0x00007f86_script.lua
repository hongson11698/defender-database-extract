-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\181b3c1b0bbf9\0x00007f86_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4, l_0_7 = (this_sigattrlog[2]).utf8p1
    else
    end
    -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

    if not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p1 ~= nil then
      local l_0_5 = nil
      local l_0_6 = (string.sub)((this_sigattrlog[4]).utf8p1, -4)
      if (string.find)("|.asp|aspx|ashx|asmx|", l_0_6, 1, true) == nil then
        return mp.CLEAN
      end
    end
    do
      local l_0_8 = nil
      if (bm.get_current_process_startup_info)() == nil or ((bm.get_current_process_startup_info)()).ppid == nil then
        return mp.CLEAN
      end
      local l_0_9 = nil
      local l_0_10 = {}
      -- DECOMPILER ERROR at PC71: No list found for R2 , SetList fails

      -- DECOMPILER ERROR at PC72: Overwrote pending register: R3 in 'AssignReg'

      if not ({"w3wp.exe", "-ap \"msexchange"})(l_0_9.ppid, l_0_10, 5) then
        return mp.CLEAN
      end
      ;
      (bm.add_related_file)(l_0_8)
      return mp.INFECTED
    end
  end
end

