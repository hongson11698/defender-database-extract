-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\83b31329173a\0x00000a29_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Confused about usage of register: R0 in 'UnsetPending'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (string.lower)((this_sigattrlog[2]).utf8p2) ~= nil then
      local l_0_4 = nil
      for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)(((string.lower)((this_sigattrlog[2]).utf8p2)):match("binpath=(.+)"))) do
        local l_0_5 = nil
        -- DECOMPILER ERROR at PC51: Confused about usage of register: R6 in 'UnsetPending'

        R6_PC51 = (mp.ContextualExpandEnvironmentVariables)(R6_PC51)
        if (string.sub)(R6_PC51, -4) == ".log" or (string.sub)(R6_PC51, -4) == ".etl" or (string.sub)(R6_PC51, -4) == ".txt" then
          l_0_9 = true
        else
          if (sysio.IsFileExists)(l_0_10) == true then
            (bm.add_related_file)(l_0_10)
            if (mp.IsKnownFriendlyFile)(l_0_10, true, false) then
              (mp.ReportLowfi)(l_0_10, 1394183950)
            else
              ;
              (mp.ReportLowfi)(l_0_10, 3656319915)
              TrackFileAndTechnique(l_0_10, "T1543.003:exec_service_binary", 1000)
            end
          end
        end
      end
      TrackPidAndTechniqueBM("BM", "T1543.003", "persistence")
    end
    return mp.INFECTED
  end
end

