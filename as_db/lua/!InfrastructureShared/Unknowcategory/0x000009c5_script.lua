-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000009c5_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC15: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2 = nil
  if (string.find)((string.lower)(l_0_0), "\\program files", 1, true) then
    return mp.CLEAN
  end
  local l_0_3 = nil
  local l_0_4 = (mp.GetExecutablesFromCommandLine)(l_0_2)
  if l_0_4 ~= nil then
    for l_0_8,l_0_9 in ipairs(l_0_4) do
      local l_0_5 = 0
      -- DECOMPILER ERROR at PC42: Confused about usage of register: R8 in 'UnsetPending'

      R8_PC42 = (mp.ContextualExpandEnvironmentVariables)(R8_PC42)
      if (sysio.IsFileExists)(R8_PC42) and ((sysio.GetLastResult)()).Success and (sysio.GetFileLastWriteTime)(R8_PC42) ~= 0 then
        local l_0_11 = (sysio.GetFileLastWriteTime)(R8_PC42) / 10000000 - 11644473600
        if l_0_11 < (MpCommon.GetCurrentTimeT)() and (MpCommon.GetCurrentTimeT)() - l_0_11 < 600 then
          l_0_5 = 1
          ;
          (bm.add_related_file)(l_0_10)
        end
      end
    end
  end
  do
    -- DECOMPILER ERROR at PC80: Confused about usage of register: R3 in 'UnsetPending'

    if l_0_5 == 1 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

