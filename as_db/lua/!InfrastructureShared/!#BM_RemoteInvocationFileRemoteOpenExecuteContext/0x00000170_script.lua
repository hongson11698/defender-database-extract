-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BM_RemoteInvocationFileRemoteOpenExecuteContext\0x00000170_luac 

-- params : ...
-- function num : 0
do
  local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)) or ""
  do
    local l_0_2 = nil
    -- DECOMPILER ERROR at PC21: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_2 == "" or (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID) or "" == "" then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

    local l_0_3 = nil
    local l_0_4 = nil
    if not GetRollingQueueKeyValue("rq_fileremotedrop", (MpCommon.Base64Encode)(l_0_2)) then
      return mp.CLEAN
    end
    local l_0_5 = nil
    local l_0_6, l_0_7 = nil
    if not checkParentProcessNameFromListByPPIDRecursive(l_0_4, "|psexesvc.exe|dllhost.exe|rundll32.exe|regsvr32.exe|wmiprvse.exe|winrshost.exe|wsmprovhost.exe|cmd.exe|powershell.exe|pwsh.exe|console.exe|bash.exe|services.exe|explorer.exe|svchost.exe|", 5) or not l_0_4 then
      return mp.CLEAN
    end
    local l_0_8 = nil
    do
      local l_0_9, l_0_10 = nil
      -- DECOMPILER ERROR at PC66: Confused about usage of register: R6 in 'UnsetPending'

      local l_0_11 = nil
      local l_0_12, l_0_13 = nil
      local l_0_14, l_0_15 = l_0_9 .. "|isRemote=" .. tostring(pcall(MpCommon.QuerySessionInformation, l_0_4, MpCommon.WTSIsRemoteSession) and MpCommon.QuerySessionInformation or "FALSE"), pcall(MpCommon.QuerySessionInformation, l_0_4, MpCommon.WTSDomainName)
      local l_0_16, l_0_17 = , pcall(MpCommon.QuerySessionInformation, l_0_4, MpCommon.WTSUserName)
      -- DECOMPILER ERROR at PC111: Overwrote pending register: R9 in 'AssignReg'

      -- DECOMPILER ERROR at PC126: Overwrote pending register: R9 in 'AssignReg'

      -- DECOMPILER ERROR at PC130: Overwrote pending register: R9 in 'AssignReg'

      -- DECOMPILER ERROR at PC145: Overwrote pending register: R9 in 'AssignReg'

      -- DECOMPILER ERROR at PC148: Overwrote pending register: R17 in 'AssignReg'

      -- DECOMPILER ERROR at PC150: Overwrote pending register: R19 in 'AssignReg'

      -- DECOMPILER ERROR at PC152: Overwrote pending register: R9 in 'AssignReg'

      -- DECOMPILER ERROR at PC155: Overwrote pending register: R17 in 'AssignReg'

      -- DECOMPILER ERROR at PC156: Overwrote pending register: R17 in 'AssignReg'

      -- DECOMPILER ERROR at PC158: Overwrote pending register: R19 in 'AssignReg'

      -- DECOMPILER ERROR at PC160: Unhandled construct in 'MakeBoolean' P3

      -- DECOMPILER ERROR at PC160: Unhandled construct in 'MakeBoolean' P3

      if ((l_0_15 and l_0_16 and l_0_16 ~= "" and not l_0_17) or pcall(MpCommon.QuerySessionInformation, l_0_4, MpCommon.WTSClientAddress)) and MpCommon.QuerySessionInformation and type(R17_PC137) == "table" then
        (mp.set_mpattribute)(R17_PC137("MpInternal_researchdata=FileRemoteDropContext=%s", R19_PC125))
        -- DECOMPILER ERROR at PC166: Overwrote pending register: R19 in 'AssignReg'

        ;
        (mp.set_mpattribute)((string.format)("MpInternal_researchdata=FileRemoteOpenExecuteContext=%s", R19_PC125))
        return mp.INFECTED
      end
    end
  end
end

