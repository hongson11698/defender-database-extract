-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000747c_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and l_0_0 >= 110592 and l_0_0 <= 131072 and pehdr.NumberOfSections == 6 and ((pesecs[1]).VirtualSize > 4096 or (pesecs[1]).VirtualSize < 8192) then
  return mp.INFECTED
end
return mp.CLEAN

