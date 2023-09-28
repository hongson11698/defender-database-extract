-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaHtaInsideZipDownloads\0x00000f7a_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.UfsGetMetadataBool)("Lua:FileInZip", true)
if l_0_0 ~= 0 or not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
if (string.find)(l_0_2, "\\downloads", 1, true) then
  if (string.sub)(l_0_2, -10) == "\\downloads" then
    (mp.set_mpattribute)("Lua:HtaInsideZipDownloadsBasePath")
  else
    if (string.find)(l_0_2, "\\downloads\\", 1, true) then
      (mp.set_mpattribute)("Lua:HtaInsideZipDownloadsWithSubPath")
    end
  end
  return mp.INFECTED
end
return mp.CLEAN

