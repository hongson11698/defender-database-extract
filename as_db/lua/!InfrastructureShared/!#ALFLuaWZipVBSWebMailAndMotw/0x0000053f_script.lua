-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFLuaWZipVBSWebMailAndMotw\0x0000053f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.IOAVGetDownloadUrl)())
if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and (mp.GetMOTWZone)() >= 3 and l_0_0 ~= nil and ((string.find)(l_0_0, "docs.googleusercontent.com/docs", 1, true) or (string.find)(l_0_0, "drive.google.com", 1, true)) and (mp.getfilesize)() <= 2097152 then
  return mp.INFECTED
end
return mp.CLEAN

