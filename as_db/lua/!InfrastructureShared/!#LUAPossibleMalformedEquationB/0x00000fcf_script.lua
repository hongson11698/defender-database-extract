-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAPossibleMalformedEquationB\0x00000fcf_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 1000 or l_0_0 > 5000 then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
if (l_0_1:sub(1024, 1056)):find("R%zo%zo%zt%z %zE%zn%zt%zr%zy%z") == nil then
  return mp.CLEAN
end
local l_0_2, l_0_3, l_0_4 = (l_0_1:sub(1056, 3072)):find("E%zq%zu%za%zt%zi%zo%zn%z %zN%za%zt%zi%zv%ze")
if l_0_3 == nil then
  return mp.CLEAN
end
local l_0_5 = l_0_3 + 1056
l_0_2 = (l_0_1:sub(l_0_5, 3328)):find("%z%z%z%z%z%z%z%z\028%z%z%z")
if l_0_3 == nil then
  return mp.CLEAN
end
l_0_2 = l_0_3 + l_0_5
-- DECOMPILER ERROR at PC54: Overwrote pending register: R3 in 'AssignReg'

if (l_0_1:sub(l_0_2, l_0_3)):find("\193..f...\139.\139.\139.1.\176.\001.\255") ~= nil then
  (mp.set_mpattribute)("LUA:Malformed.Equation.B")
end
return mp.CLEAN

