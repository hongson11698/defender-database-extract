-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\__TestModifiedOwnershipScanReason\ObMpAttributes\0x000000e4_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == 19 and (mp.getfilename)(mp.FILEPATH_QUERY_FULL) == "/tmp/4f9c77e0-4aba-4143-894e-4e6241443435.txt" then
  return mp.INFECTED
end
return mp.CLEAN

