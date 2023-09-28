-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\TrojanWin64ComebackerBgen!dha\ObMpAttributes\0x000000ad_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (pe.get_exports)()
if l_0_0 > 3 then
  return mp.CLEAN
end
local l_0_2 = {}
l_0_2.DllMain = 10
l_0_2.ASN2_TYPE_new = 1
l_0_2.ASN2_TYPE_newW = 1
l_0_2.CleanupBrokerString = 1
l_0_2.cmsSetLogHandlerTHR = 1
l_0_2.deflateSuffix = 1
l_0_2.ENGINE_get_RAND = 1
l_0_2.ENGINE_get_RANDW = 1
l_0_2.glInitSampler = 1
l_0_2.json_object_get_unicode_string = 1
l_0_2.ntSystemInfo = 1
l_0_2.ntWindowsProc = 1
l_0_2.SetWebFilterString = 1
l_0_2.sql_blob_open = 1
l_0_2.SSL_HandShaking = 1
local l_0_3 = 0
for l_0_7 = 1, l_0_0 do
  local l_0_8 = (pe.mmap_string_rva)((l_0_1[l_0_7]).namerva, 64)
  if l_0_2[l_0_8] ~= nil then
    l_0_3 = l_0_3 + l_0_2[l_0_8]
  end
end
if l_0_3 == 10 then
  return mp.CLEAN
else
  if l_0_3 >= 11 then
    return mp.INFECTED
  else
    if l_0_3 > 0 then
      local l_0_9 = {}
      l_0_9[".bin"] = true
      l_0_9[".cpl"] = true
      l_0_9[".dat"] = true
      l_0_9[".db"] = true
      local l_0_10 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
      if l_0_9[l_0_10:sub(-3)] ~= nil or l_0_9[l_0_10:sub(-4)] ~= nil then
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

