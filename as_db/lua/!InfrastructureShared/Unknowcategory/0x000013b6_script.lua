-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000013b6_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[15]).matched and (this_sigattrlog[15]).wp2 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC21: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and (string.find)(l_0_0, "/logrotate", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end

