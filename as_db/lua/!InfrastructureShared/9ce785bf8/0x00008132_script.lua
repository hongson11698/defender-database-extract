-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9ce785bf8\0x00008132_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("Themida_Attr") ~= true then
  return mp.CLEAN
end
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if peattributes.hasexports ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 8 and pehdr.NumberOfSections ~= 7 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections - 1]).Characteristics ~= 3758096448 then
  return mp.CLEAN
end
local l_0_0 = ((pehdr.DataDirectory)[1]).RVA
local l_0_1 = ((pehdr.DataDirectory)[1]).Size
if (pe.contains_rva)(pehdr.NumberOfSections - 1, l_0_0) ~= true then
  return mp.CLEAN
end
if l_0_1 ~= 91 then
  return mp.CLEAN
end
l_0_0 = (pe.foffset_rva)(l_0_0)
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)(l_0_0, l_0_1 + 4)
local l_0_3 = (mp.readu_u32)(l_0_2, 59)
if l_0_3 ~= 1819042862 then
  return mp.CLEAN
end
if l_0_2:byte(63) ~= 0 then
  return mp.CLEAN
end
for l_0_7 = 64, 69 do
  if l_0_2:byte(l_0_7) > 122 then
    return mp.CLEAN
  end
  if l_0_2:byte(l_0_7) < 65 then
    return mp.CLEAN
  end
end
return mp.INFECTED

