-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f66_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 32)
local l_0_1 = (mp.readu_u16)(l_0_0, 1)
if l_0_1 ~= 32129 then
  return mp.CLEAN
end
local l_0_2 = (mp.readu_u16)(l_0_0, 8)
if l_0_2 ~= 5245 then
  return mp.CLEAN
end
local l_0_3 = (mp.readu_u32)(l_0_0, 4)
if l_0_3 < 16777216 then
  return mp.CLEAN
end
local l_0_4 = (string.byte)(l_0_0, 3)
local l_0_6 = (string.byte)(l_0_0, 12)
if (string.byte)(l_0_0, 15) > 2 then
  return mp.CLEAN
end
if l_0_4 ~= l_0_6 then
  return mp.CLEAN
end
l_0_6 = (string.byte)(l_0_0, 18)
if l_0_4 ~= l_0_6 then
  return mp.CLEAN
end
l_0_6 = (string.byte)(l_0_0, 21)
if l_0_4 ~= l_0_6 then
  return mp.CLEAN
end
l_0_6 = (string.byte)(l_0_0, 27)
local l_0_5 = nil
if l_0_4 ~= l_0_6 then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(pevars.sigaddr, "�E")
return mp.INFECTED

