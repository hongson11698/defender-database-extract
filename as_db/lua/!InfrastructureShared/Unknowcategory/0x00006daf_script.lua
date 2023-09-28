-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006daf_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)(tostring(headerpage))
local l_0_1, l_0_2 = (string.gsub)(l_0_0, "&#x0a;", "")
local l_0_3, l_0_4 = (string.gsub)(l_0_0, "&#x0d;", "")
if l_0_2 == 0 then
  return mp.CLEAN
end
if l_0_4 == 0 then
  return mp.CLEAN
end
if l_0_2 > 50 and l_0_4 > 50 then
  return mp.INFECTED
end
return mp.CLEAN

