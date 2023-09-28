-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2c29fcf94e0d\0x00007fc2_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetBruteMatchData)()
if l_0_0.match_offset == 0 then
  return mp.CLEAN
end
local l_0_1 = l_0_0.match_offset + 1
local l_0_2 = 128
local l_0_3 = ""
if l_0_0.is_header then
  if mp.HEADERPAGE_SZ <= l_0_1 + l_0_2 then
    return mp.CLEAN
  end
  l_0_3 = (mp.readheader)(l_0_1, l_0_2)
else
  if mp.FOOTERPAGE_SZ <= l_0_1 + l_0_2 then
    return mp.CLEAN
  end
  l_0_3 = (mp.readfooter)(l_0_1, l_0_2)
end
if l_0_3 ~= "" then
  local l_0_4 = l_0_3:find(">", 1, true)
  if l_0_4 ~= nil then
    l_0_3 = l_0_3:sub(l_0_4 + 1, l_0_2 - 1)
    local l_0_5, l_0_6 = l_0_3:find("<", 1, true)
    if l_0_6 ~= nil then
      local l_0_7 = l_0_3:sub(1, l_0_6 - 1)
      if l_0_7 == nil then
        return mp.CLEAN
      end
      if (string.len)(l_0_7) == 0 then
        return mp.CLEAN
      end
      local l_0_8 = (MpCommon.Base64Encode)(l_0_7)
      set_research_data("OFFCR:", l_0_8, false)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

