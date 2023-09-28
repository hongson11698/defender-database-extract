-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007bf4_luac 

-- params : ...
-- function num : 0
if not peattributes.isdll or pehdr.TimeDateStamp ~= 0 or ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_EXPORT]).RVA == 0 or ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_EXPORT]).Size < 9 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (pe.mmap_rva)(((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_EXPORT]).RVA, 9)
if (mp.readu_u32)(l_0_0, 5) == 4294967295 then
  return mp.INFECTED
end
return mp.CLEAN

