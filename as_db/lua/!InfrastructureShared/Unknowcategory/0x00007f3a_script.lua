-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f3a_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC22: Overwrote pending register: R0 in 'AssignReg'

  if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
    local l_0_1, l_0_2 = this_sigattrlog[2]
  else
    do
      do return mp.CLEAN end
      -- DECOMPILER ERROR at PC27: Confused about usage of register: R0 in 'UnsetPending'

      if not l_0_1.utf8p2 then
        return mp.CLEAN
      end
      local l_0_3 = nil
      local l_0_4 = {}
      local l_0_5 = "0x0c347ca0"
      for l_0_9,l_0_10 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_3.utf8p2)) do
        local l_0_6 = nil
        -- DECOMPILER ERROR at PC45: Confused about usage of register: R8 in 'UnsetPending'

        if (string.lower)(R8_PC45) ~= (string.lower)(l_0_3.image_path) and (sysio.IsFileExists)(R8_PC45) then
          (table.insert)(l_0_4, l_0_3.ppid .. ";" .. l_0_5 .. ";" .. R8_PC45)
        end
      end
      if #l_0_4 > 0 then
        (MpCommon.SetPersistContextNoPath)("bm_ipc_taskschd", l_0_4, 10)
      end
      return mp.CLEAN
    end
  end
end

