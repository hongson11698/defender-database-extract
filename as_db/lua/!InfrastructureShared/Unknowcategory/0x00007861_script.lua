-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007861_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security and l_0_0 > 145000 and l_0_0 < 179000 and pehdr.NumberOfSections == 4 and (pesecs[3]).Name == "CONST" and (pesecs[3]).SizeOfRawData <= 8192 and (pesecs[3]).SizeOfRawData >= 2048 then
  return mp.INFECTED
end
return mp.CLEAN

