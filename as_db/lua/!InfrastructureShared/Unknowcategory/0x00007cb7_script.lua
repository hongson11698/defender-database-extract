-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007cb7_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 5 then
  return mp.CLEAN
end
if not peattributes.x86_image then
  return mp.CLEAN
end
if (pesecs[1]).SizeOfRawData < 483328 or (pesecs[1]).SizeOfRawData > 495616 then
  return mp.CLEAN
end
if (pesecs[2]).SizeOfRawData > 8192 then
  return mp.CLEAN
end
if (pesecs[3]).SizeOfRawData ~= 12288 then
  return mp.CLEAN
end
if (pesecs[4]).SizeOfRawData ~= 4096 then
  return mp.CLEAN
end
if (pesecs[5]).SizeOfRawData < 1146880 or (pesecs[5]).SizeOfRawData > 1196032 then
  return mp.CLEAN
end
return mp.INFECTED

