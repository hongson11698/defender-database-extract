-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001022_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_CONTROL_GUID)
if l_0_0 and l_0_1 ~= nil and (string.match)(l_0_1, "6e6b5b2a%-ec7e%-4f25%-95bb%-504bb437e95e") then
  local l_0_2, l_0_3 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_URL)
  if l_0_2 and l_0_3 ~= nil then
    if (string.match)(l_0_3, "RequestIeBlockPage") then
      (mp.set_mpattribute)("RequestIeBlockPage")
    end
    if (string.match)(l_0_3, "RequestIeBlockControl") then
      (mp.set_mpattribute)("RequestIeBlockControl")
    end
  end
  local l_0_4, l_0_5 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_CONTROL_HTML)
  if l_0_4 and l_0_5 ~= nil then
    if (string.match)(l_0_5, "ievtestflag=\'{dbcbb885%-65d3%-497e%-ae63%-6a2ee5effd62}\'") then
      (mp.set_mpattribute)("RequestIeBlockPage")
    end
    if (string.match)(l_0_5, "ievtestflag=\'{04ddafef%-cb54%-4caa%-9060%-59cf0dea1aae}\'") then
      (mp.set_mpattribute)("RequestIeBlockControl")
    end
  end
  return mp.TRUE
end
do
  return mp.FALSE
end

