-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\74b352513c92\0x00007adc_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC14: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_1 = (mp.ContextualExpandEnvironmentVariables)(l_0_0)
  local l_0_2 = (mp.IsKnownFriendlyFile)(l_0_1, true, false)
  if l_0_2 == nil or l_0_2 == false then
    if (sysio.IsFileExists)(l_0_1) then
      (bm.add_related_file)(l_0_1)
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

