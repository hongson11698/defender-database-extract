-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000726c_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0:find("%-%>.%d%d%d%d%d%d%d%d%d%d+/.%d%d%d%d%d%d%d%d%d%d+%.class$") ~= nil and (mp.getfilesize)() <= 2048 then
  (mp.set_mpattribute)("Lua:Java/MaliciousClassName")
end
return mp.INFECTED

