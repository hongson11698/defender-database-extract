-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAOLEEquationNativeNotSentenceCase\0x000010d7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 200000 or l_0_0 > 1000000 then
  return mp.CLEAN
end
local l_0_1 = tostring(footerpage)
if l_0_1:find("E%zq%zu%za%zt%zi%zo%zn%z %zN%za%zt%zi%zv%ze") == nil and l_0_1:find("[Ee]%z[Qq]%z[Uu]%z[Aa]%z[Tt]%z[Ii]%z[Oo]%z[Nn]%z %z[Nn]%z[Aa]%z[Tt]%z[Ii]%z[Vv]%z[Ee]") ~= nil then
  return mp.INFECTED
end
if l_0_1:find("\001%zO%zl%ze%z1%z0%zN%za%zt%zi%zv%ze") == nil and l_0_1:find("\001%z[Oo]%z[Ll]%z[Ee]%z1%z0%z[Nn]%z[Aa]%z[Tt]%z[Ii]%z[Vv]%z[Ee]") ~= nil then
  (mp.set_mpattribute)("Lua:OLE.Ole10Native.NotSentenceCase")
end
if l_0_0 < 500000 or l_0_0 > 1000000 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
l_0_1 = tostring((mp.readfile)(l_0_0 - 8192, 4096))
if l_0_1:find("E%zq%zu%za%zt%zi%zo%zn%z %zN%za%zt%zi%zv%ze") == nil and l_0_1:find("[Ee]%z[Qq]%z[Uu]%z[Aa]%z[Tt]%z[Ii]%z[Oo]%z[Nn]%z %z[Nn]%z[Aa]%z[Tt]%z[Ii]%z[Vv]%z[Ee]") ~= nil then
  return mp.INFECTED
end
if l_0_1:find("\001%zO%zl%ze%z1%z0%zN%za%zt%zi%zv%ze") == nil and l_0_1:find("\001%z[Oo]%z[Ll]%z[Ee]%z1%z0%z[Nn]%z[Aa]%z[Tt]%z[Ii]%z[Vv]%z[Ee]") ~= nil then
  (mp.set_mpattribute)("Lua:OLE.Ole10Native.NotSentenceCase")
end
return mp.CLEAN

