-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007eee_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[5]).matched then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2 = nil
  if (((string.find)((string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_0)), "\\microsoft\\onedrive\\", 1, true) or (string.find)((string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_0)), "\\microsoft onedrive\\", 1, true)) and (string.find)((string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_0)), "filesyncshell64.dll", 1, true)) or (string.find)((string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_0)), "\\microsoft\\teams\\", 1, true) and (string.find)((string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_0)), "userenv.dll", 1, true) then
    (bm.add_related_file)((string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_0)))
    return mp.INFECTED
  end
  return mp.CLEAN
end

