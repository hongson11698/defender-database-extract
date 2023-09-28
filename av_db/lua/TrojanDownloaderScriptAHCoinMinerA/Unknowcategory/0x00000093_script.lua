-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\TrojanDownloaderScriptAHCoinMinerA\Unknowcategory\0x00000093_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("STATIC:TrojanDownloader:Script/AHCoinMiner.A!AHK") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0:find("^%l%l%l%l%l%l%l%l%l%l%l%l%l%l%l%l%l%l%l%l%l%.exe$") == 1 then
  return mp.INFECTED
end
return mp.CLEAN

