-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFSuspFilesFromArchive\0x0000044d_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) ~= true then
  return mp.CLEAN
end
local l_0_0, l_0_1 = pcall(mp.GetMOTWReferrerUrl)
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
l_0_1 = l_0_1:lower()
if StringStartsWith(l_0_1, "http") or StringStartsWith(l_0_1, "www") then
  (mp.set_mpattribute)("FileHasMotwReferrerUrl_web")
else
  ;
  (mp.set_mpattribute)("FileHasMotwReferrerUrl_file")
  if (mp.get_mpattribute)("LUA:FileSizeGT500M.A") and (sysio.IsFileExists)(l_0_1) then
    local l_0_2 = (mp.getfilesize)()
    local l_0_3 = (sysio.GetFileSize)(l_0_1)
    local l_0_4 = 80
    if l_0_3 > 0 and l_0_4 < l_0_2 / l_0_3 then
      (mp.set_mpattribute)("Lua:HighlyCompressedFileFromArchiveWithMotw")
      local l_0_5 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
      local l_0_6 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
      local l_0_7 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
      local l_0_8 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
      if l_0_5 ~= nil and l_0_7 ~= nil and l_0_6 ~= nil and l_0_8 ~= nil then
        l_0_5 = ((MpCommon.PathToWin32Path)(l_0_5)):lower()
        local l_0_9 = (MpCommon.GetCurrentTimeT)()
        local l_0_10 = "EFMRU::ProcessImagePath=" .. l_0_5 .. "\\" .. l_0_7:lower() .. ";pid=" .. l_0_6 .. ";timestamp=" .. l_0_9 .. ";FilePath=" .. l_0_8 .. ";motwReferrerURL=" .. l_0_1 .. ";ParentSize=" .. l_0_3
        ;
        (mp.set_mpattribute)((string.format)("MpInternal_researchdata=LargeFileData=%s", l_0_10))
        if IsKeyInRollingQueue("CC_filelist", l_0_1) then
          local l_0_11 = 31536000
          AppendToRollingQueue("CC_filelist", l_0_8, l_0_10, l_0_11, 32)
        end
      end
      do
        do
          do return mp.INFECTED end
          return mp.CLEAN
        end
      end
    end
  end
end

