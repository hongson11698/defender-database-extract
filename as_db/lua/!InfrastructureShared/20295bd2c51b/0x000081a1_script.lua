-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\20295bd2c51b\0x000081a1_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.match)(l_0_0, "\\tasks") ~= nil and (mp.get_mpattribute)("BM_XML_FILE") and not (mp.get_mpattribute)("MpInternal_IsPliScan") and not (mp.get_mpattribute)("MpAlwaysLowfiMatch") then
  local l_0_1 = (mp.GetBruteMatchData)()
  local l_0_2 = l_0_1.match_offset + 1
  local l_0_3 = 128
  local l_0_4 = ""
  if l_0_1.is_header then
    l_0_4 = (tostring(headerpage)):sub(l_0_2, l_0_2 + l_0_3)
  else
    l_0_4 = (tostring(footerpage)):sub(l_0_2, l_0_2 + l_0_3)
  end
  if (string.match)(l_0_4, "www%.zoom%.us") ~= nil then
    return mp.CLEAN
  end
  local l_0_5 = l_0_4:find("http", 1, true)
  if l_0_5 ~= nil then
    l_0_4 = l_0_4:sub(l_0_5, l_0_3 - 1)
    local l_0_6, l_0_7 = l_0_4:find("<", 1, true)
    if l_0_7 ~= nil then
      local l_0_8, l_0_9 = l_0_4:find(" ", 1, true)
      local l_0_10 = ""
      if l_0_9 ~= nil and l_0_9 < l_0_7 then
        l_0_10 = l_0_4:sub(1, l_0_9 - 1)
      else
        l_0_10 = l_0_4:sub(1, l_0_7 - 1)
      end
      local l_0_11 = (MpCommon.Base64Encode)(l_0_10)
      set_research_data("taskMsiUrl", l_0_11, false)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

