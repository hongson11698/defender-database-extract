-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006d22_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if ((l_0_0 >= 53248 and l_0_0 <= 61440) or l_0_0 < 315392 or l_0_0 <= 327680) and (pehdr.NumberOfSections >= 2 or pehdr.NumberOfSections <= 4) then
  return mp.INFECTED
end
return mp.CLEAN

