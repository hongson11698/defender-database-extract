-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\BITSAbuse\0x000011c6_luac 

-- params : ...
-- function num : 0
if (string.match)((string.lower)((Remediation.Threat).Name), "bitsabuse") and not (string.match)((string.lower)((Remediation.Threat).Name), "bitsabuse.z") and not (string.match)((string.lower)((Remediation.Threat).Name), "bitsabuse.y") then
  local l_0_0 = (MpCommon.ExpandEnvironmentVariables)("%ProgramData%")
  if (sysio.IsFileExists)(l_0_0 .. "\\microsoft\\network\\downloader\\qmgr.db") ~= nil or (sysio.IsFileExists)(l_0_0 .. "\\microsoft\\network\\downloader\\qmgr0.dat") ~= nil then
    local l_0_1 = (sysio.EnumerateBitsJobs)()
    if l_0_1 == nil then
      return 
    end
    local l_0_2 = {}
    -- DECOMPILER ERROR at PC64: No list found for R2 , SetList fails

    local l_0_3 = {}
    -- DECOMPILER ERROR at PC67: No list found for R3 , SetList fails

    -- DECOMPILER ERROR at PC68: Overwrote pending register: R4 in 'AssignReg'

    for l_0_7,l_0_8 in ("errorreportclient.exe")(l_0_1) do
      local l_0_9 = (string.lower)(l_0_8.JobName)
      if l_0_9 == "" or l_0_9 == nil then
        return 
      end
      local l_0_10 = (string.lower)(l_0_8.NotifyCmdProgram)
      if l_0_10 == "" or l_0_10 == nil then
        return 
      end
      for l_0_14 = 1, #l_0_2 do
        if (string.find)(l_0_9, l_0_2[l_0_14], 1, true) ~= nil then
          return 
        end
      end
      for l_0_18 = 1, #l_0_3 do
        if (string.find)(l_0_10, l_0_3[l_0_18], 1, true) ~= nil then
          return 
        end
      end
      if (string.match)((string.lower)(l_0_8.NotifyCmdProgramParam), "http[s]?%:%/%/.-%/") ~= nil then
        (sysio.DeleteBitsJob)(l_0_8.JobId)
      end
      if l_0_8.JobFiles == nil then
        return 
      end
      for l_0_22,l_0_23 in ipairs(l_0_8.JobFiles) do
        local l_0_24 = 0
        local l_0_25 = (string.lower)(l_0_23.FileRemoteName)
        if l_0_8.JobType == l_0_24 and (string.match)(l_0_25, "^http[s]?%:%/%/.-%/") == nil and ((string.match)(l_0_25, "^\\\\localhost\\%a%$\\") ~= nil or (string.match)(l_0_25, "^\\\\127.0.0.1\\%a%$\\") ~= nil or (string.match)(l_0_25, "^%a:\\.+") ~= nil or (string.match)(l_0_25, "^%%%a+%%") ~= nil) then
          (sysio.DeleteBitsJob)(l_0_8.JobId)
        end
      end
    end
  end
end

