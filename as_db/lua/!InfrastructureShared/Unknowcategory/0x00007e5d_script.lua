-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e5d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 98304 then
  return mp.CLEAN
end
if l_0_0 < 40960 then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
if (string.find)(l_0_1, "\n", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_2, l_0_3, l_0_4, l_0_5 = l_0_1:match("%(function%((%l%l%l%l%l%l+),(%l%l%l%l%l%l+)%){(%l%l%l%l%l%l+)=function%(%){return (%l%l%l%l%l%l+)%.pop%(%)}")
local l_0_6 = #l_0_3 - 1
local l_0_7 = #l_0_3 + 1
-- DECOMPILER ERROR at PC67: Unhandled construct in 'MakeBoolean' P3

if (#l_0_2 ~= #l_0_3 and #l_0_2 ~= l_0_6 and #l_0_2 ~= l_0_7) or #l_0_3 == #l_0_4 or l_0_6 == #l_0_4 or #l_0_3 ~= #l_0_5 and l_0_6 ~= #l_0_5 and l_0_7 ~= #l_0_5 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("SCRIPT:Worm:JS/Proslikefan_Lowfi2")
return mp.CLEAN

