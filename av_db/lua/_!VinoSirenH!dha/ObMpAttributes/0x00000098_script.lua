-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!VinoSirenH!dha\ObMpAttributes\0x00000098_luac 

-- params : ...
-- function num : 0
if ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR + 1]).RVA == 0 or ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR + 1]).Size == 0 then
  return mp.CLEAN
end
local l_0_0 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR + 1]).RVA
local l_0_1 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR + 1]).Size
local l_0_2 = (pesecs[pehdr.NumberOfSections]).PointerToRawData + (pesecs[pehdr.NumberOfSections]).SizeOfRawData
local l_0_3 = (mp.getfilesize)()
if l_0_0 ~= l_0_2 or l_0_3 < l_0_0 + l_0_1 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_4 = (mp.readfile)(l_0_2, 4)
if l_0_4 == nil then
  return mp.CLEAN
end
local l_0_5 = (mp.readu_u32)(l_0_4, 1)
if l_0_5 == 0 or l_0_3 < l_0_2 + l_0_5 then
  return mp.CLEAN
end
local l_0_6 = l_0_2 + 4 + l_0_5
local l_0_7 = (mp.readfile)(l_0_6, 20)
if l_0_7 == nil then
  return mp.CLEAN
end
;
(mp.readprotection)(true)
if (mp.readu_u32)(l_0_7, 13) < 1 then
  return mp.CLEAN
end
l_0_5 = (mp.readu_u32)(l_0_7, 17)
if l_0_5 == 0 or l_0_3 < l_0_6 + 20 + 4 + l_0_5 then
  return mp.CLEAN
end
return mp.INFECTED

