-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007a3e_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    local l_0_2 = nil
    if (mp.GetExecutablesFromCommandLine)(l_0_0) then
      for l_0_6,l_0_7 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_0)) do
        local l_0_3 = nil
        -- DECOMPILER ERROR at PC27: Confused about usage of register: R6 in 'UnsetPending'

        R6_PC27 = (mp.ContextualExpandEnvironmentVariables)(R6_PC27)
        if R6_PC27 and (sysio.IsFileExists)(R6_PC27) then
          (mp.ReportLowfi)(R6_PC27, 3331634663)
        end
      end
    end
  end
  do
    return mp.INFECTED
  end
end
