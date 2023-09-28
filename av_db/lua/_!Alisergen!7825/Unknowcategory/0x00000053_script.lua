-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Alisergen!7825\Unknowcategory\0x00000053_luac 

-- params : ...
-- function num : 0
if peattributes.epscn_writable == false then
  return mp.CLEAN
end
if epcode[1] ~= 232 then
  return mp.CLEAN
end
if epcode[2] ~= 0 then
  return mp.CLEAN
end
if epcode[3] ~= 0 then
  return mp.CLEAN
end
if epcode[4] ~= 0 then
  return mp.CLEAN
end
if epcode[5] ~= 0 then
  return mp.CLEAN
end
if epcode[6] ~= 93 then
  return mp.CLEAN
end
if epcode[7] ~= 139 then
  return mp.CLEAN
end
if epcode[8] ~= 69 then
  return mp.CLEAN
end
if epcode[9] ~= 7 then
  return mp.CLEAN
end
if epcode[10] ~= 64 then
  return mp.CLEAN
end
if epcode[11] ~= 255 then
  return mp.CLEAN
end
if epcode[12] ~= 224 then
  return mp.CLEAN
end
if epcode[13] ~= 255 then
  return mp.CLEAN
end
return mp.INFECTED

