-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000781_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  do
    if l_0_0 ~= nil then
      local l_0_1 = (string.lower)(l_0_0)
      if (string.find)(l_0_1, "\\windows auditing\\current\\winaudit.exe", 1, true) then
        return mp.CLEAN
      else
        if (string.find)(l_0_1, "\\windows auditing\\current\\winaudit_standalone.exe", 1, true) then
          return mp.CLEAN
        end
      end
    end
    return mp.INFECTED
  end
end

