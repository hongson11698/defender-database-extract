-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007c5d_luac 

-- params : ...
-- function num : 0
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 4 then
  return mp.CLEAN
end
if (pesecs[1]).VirtualSize <= 12288 then
  return mp.CLEAN
end
if (pesecs[1]).VirtualSize >= 81920 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pesecs[1]).VirtualSize + (pesecs[1]).PointerToRawData, 4)
if (mp.readu_u32)(l_0_0, 1) == 0 then
  return mp.CLEAN
end
return mp.INFECTED

