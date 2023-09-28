-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000001b6_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  else
  end
  if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).utf8p2 ~= nil then
    do return mp.CLEAN end
    local l_0_2 = (string.lower)((this_sigattrlog[7]).utf8p2)
    if (bm.get_current_process_startup_info)() == nil or ((bm.get_current_process_startup_info)()).command_line == nil then
      return mp.CLEAN
    end
    local l_0_3 = nil
    if (MpCommon.GetPersistContextCountNoPath)("SuspScriptPersist") > 0 then
      local l_0_4 = (string.lower)(((bm.get_current_process_startup_info)()).command_line)
      if (MpCommon.GetPersistContextNoPath)("SuspScriptPersist") then
        for l_0_8,l_0_9 in ipairs((MpCommon.GetPersistContextNoPath)("SuspScriptPersist")) do
          local l_0_5 = nil
          -- DECOMPILER ERROR at PC72: Confused about usage of register: R8 in 'UnsetPending'

          if (string.match)(R8_PC72, "\\([^\\]+)$") ~= nil and (string.find)(l_0_4, (string.match)(R8_PC72, "\\([^\\]+)$"), 1, true) and (string.find)(l_0_2, (string.match)(R8_PC72, "\\([^\\]+)$"), 1, true) then
            return mp.INFECTED
          end
        end
      end
    end
    do
      return mp.CLEAN
    end
  end
end

