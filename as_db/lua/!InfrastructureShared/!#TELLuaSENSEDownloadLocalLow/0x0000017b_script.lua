-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELLuaSENSEDownloadLocalLow\0x0000017b_luac 

-- params : ...
-- function num : 0
do
  if (mp.GetScanSource)() == mp.SCANSOURCE_SENSE then
    local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
    if l_0_0:sub(-8) == "locallow" or l_0_0:sub(-9) == "downloads" then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

