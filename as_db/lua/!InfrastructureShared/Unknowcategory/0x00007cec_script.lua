-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007cec_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)(tostring(headerpage))
local l_0_1 = (string.match)(l_0_0, "<param name=\"movie\" value=\"/(.-)\">")
if l_0_1 then
  local l_0_2 = (string.match)(l_0_0, "<embed name=\"%l-\" width=\"115\" height=\"110\" align=\"middle\" pluginspage=\".-\" src=\"/(.-)\" type=\"")
  if l_0_2 and l_0_2 == l_0_1 and (string.find)(l_0_1, "^%l-%.%l-%?%w%w%w%w-=") then
    local l_0_3 = 0
    for l_0_7 in (string.gmatch)(l_0_1, "=%w%w%w%w-&") do
      l_0_3 = l_0_3 + 1
    end
    if l_0_3 >= 2 then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

