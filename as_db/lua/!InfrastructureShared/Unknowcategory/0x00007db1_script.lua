-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007db1_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0, l_0_1, l_0_9, l_0_11, l_0_13 = nil, nil
  l_0_9 = this_sigattrlog
  l_0_9 = l_0_9[1]
  l_0_1 = l_0_9.ppid
  local l_0_2, l_0_10, l_0_12, l_0_14 = nil
end
do
  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC20: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    local l_0_3 = nil
    for l_0_7,l_0_8 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_0)) do
      local l_0_4, l_0_5 = nil
      -- DECOMPILER ERROR at PC28: Confused about usage of register: R7 in 'UnsetPending'

      -- DECOMPILER ERROR at PC41: Confused about usage of register: R7 in 'UnsetPending'

      -- DECOMPILER ERROR at PC49: Confused about usage of register: R7 in 'UnsetPending'

      if (sysio.IsFileExists)((mp.ContextualExpandEnvironmentVariables)(l_0_12)) and (string.find)((string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_12)), "javaw.exe") == nil then
        (bm.add_threat_file)((mp.ContextualExpandEnvironmentVariables)(l_0_12))
      end
    end
  end
  do
    -- DECOMPILER ERROR at PC53: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC57: Confused about usage of register: R1 in 'UnsetPending'

    if l_0_4 ~= nil then
      (bm.add_threat_process)(l_0_4)
    end
    return mp.INFECTED
  end
end

