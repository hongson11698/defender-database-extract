-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007a80_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if (hstrlog[3]).matched and l_0_0 >= 163840 and l_0_0 <= 196608 then
  return mp.INFECTED
end
if peattributes.no_security == true and l_0_0 >= 163840 and l_0_0 <= 176128 and pehdr.NumberOfSections >= 6 and pehdr.NumberOfSections <= 8 and (mp.get_mpattribute)("NID:Emotet.PB!MSR!Pra1") then
  return mp.INFECTED
end
return mp.CLEAN

