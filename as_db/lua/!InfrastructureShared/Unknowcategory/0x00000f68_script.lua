-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000f68_luac 

-- params : ...
-- function num : 0
local l_0_0 = 0
if peattributes.no_code ~= false then
  return mp.CLEAN
end
local l_0_1 = pehdr.SizeOfCode
if l_0_1 == nil or l_0_1 <= 0 then
  return mp.CLEAN
end
if peattributes.no_idata ~= false then
  return mp.CLEAN
end
local l_0_2 = pehdr.SizeOfInitializedData
if l_0_2 == nil or l_0_2 <= 0 then
  return mp.CLEAN
end
if l_0_2 <= l_0_1 then
  return mp.CLEAN
end
l_0_0 = tonumber(l_0_2 / l_0_1)
;
(mp.set_mpattributeex)("Lua:InitDataToCodeRatio", l_0_0)
if peattributes.no_resources ~= false then
  return mp.CLEAN
end
local l_0_3 = ((pehdr.DataDirectory)[3]).Size
if l_0_3 == nil or l_0_3 <= 0 then
  return mp.CLEAN
end
if l_0_3 <= l_0_1 then
  return mp.CLEAN
end
l_0_0 = tonumber(l_0_3 / l_0_1)
;
(mp.set_mpattributeex)("Lua:RsrcDataToCodeRatio", l_0_0)
return mp.CLEAN

