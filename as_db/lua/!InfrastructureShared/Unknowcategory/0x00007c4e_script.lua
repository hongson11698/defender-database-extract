-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007c4e_luac 

-- params : ...
-- function num : 0
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if (pesecs[1]).NameDW ~= 2019914798 then
  return mp.CLEAN
end
if (pesecs[1]).Characteristics ~= 1610612768 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(pehdr.AddressOfEntryPoint), 24)
if (mp.crc32)(-1, l_0_0, 1, 24) ~= 1525313111 then
  return mp.CLEAN
end
return mp.INFECTED

