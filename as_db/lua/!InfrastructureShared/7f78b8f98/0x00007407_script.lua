-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\7f78b8f98\0x00007407_luac 

-- params : ...
-- function num : 0
if peattributes.isvbpcode ~= true and peattributes.isvbnative ~= true then
  return mp.CLEAN
end
if peattributes.isdll == true then
  return mp.CLEAN
end
if (mp.getfilesize)() > 512000 then
  return mp.CLEAN
end
if (hstrlog[4]).hitcount > 50 then
  return mp.CLEAN
end
return mp.INFECTED

