-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d51_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 256 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)()
if (string.sub)(l_0_1, -4) ~= ".dat" then
  return mp.CLEAN
end
if headerpage[1] ~= 170 then
  return mp.CLEAN
end
if headerpage[2] ~= 254 then
  return mp.CLEAN
end
if headerpage[3] ~= 14 then
  return mp.CLEAN
end
return mp.INFECTED

