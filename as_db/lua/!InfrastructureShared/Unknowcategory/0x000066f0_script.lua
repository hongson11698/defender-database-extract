-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000066f0_luac 

-- params : ...
-- function num : 0
local l_0_0 = tostring(headerpage)
if l_0_0:find("Equation.3") == nil and l_0_0:find("%z%z[Ee][Qq][Uu][Aa][Tt][Ii][Oo][Nn].3%z%z") ~= nil then
  (mp.set_mpattribute)("Lua:OLE.Equation3.NotSentenceCase")
  return mp.INFECTED
end
return mp.INFECTED

