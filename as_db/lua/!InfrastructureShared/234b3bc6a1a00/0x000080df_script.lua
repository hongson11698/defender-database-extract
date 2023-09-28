-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\234b3bc6a1a00\0x000080df_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[4]).matched or (this_sigattrlog[5]).matched then
      local l_0_1, l_0_2, l_0_4, l_0_5 = (this_sigattrlog[4]).utf8p2, nil
    else
    end
    do
      if (not (this_sigattrlog[6]).matched or (this_sigattrlog[1]).matched) and (this_sigattrlog[1]).utf8p2 then
        local l_0_3, l_0_6 = (this_sigattrlog[6]).utf8p2, (this_sigattrlog[1]).utf8p2
      else
      end
      -- DECOMPILER ERROR at PC65: Confused about usage of register: R0 in 'UnsetPending'

      if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 then
        local l_0_7, l_0_8 = , (this_sigattrlog[2]).utf8p2
        if pcall(mp.GetInlineScriptsFromCommandLine, l_0_3:lower()) and mp.GetInlineScriptsFromCommandLine then
          for l_0_12,l_0_13 in ipairs(R5_PC74) do
            local l_0_9, l_0_10 = nil
            -- DECOMPILER ERROR at PC79: Confused about usage of register: R8 in 'UnsetPending'

            if pcall(mp.ContextualExpandEnvironmentVariables, R8_PC79) and mp.ContextualExpandEnvironmentVariables then
              (bm.add_related_file)(R12_PC88)
            end
          end
        end
        do
          local l_0_16 = nil
          if extractDllForRegproc(l_0_8) and (mp.IsKnownFriendlyFile)(extractDllForRegproc(l_0_8), true, false) == false then
            (bm.add_related_file)(extractDllForRegproc(l_0_8))
          end
          triggerMemoryScanOnProcessTree(true, true, "SMS_M", 1000, "Behavior:Win32/Qakbot.SD")
          return mp.INFECTED
        end
      end
    end
  end
end

