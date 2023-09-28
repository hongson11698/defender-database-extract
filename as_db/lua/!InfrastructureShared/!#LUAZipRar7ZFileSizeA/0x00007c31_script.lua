-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAZipRar7ZFileSizeA\0x00007c31_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 <= 120000000 then
  (mp.set_mpattribute)("//LUA:ZipRar7ZFileLE120M.A")
end
if l_0_0 <= 80000000 then
  (mp.set_mpattribute)("//LUA:ZipRar7ZFileLE80M.A")
end
if l_0_0 <= 40000000 then
  (mp.set_mpattribute)("//LUA:ZipRar7ZFileLE40M.A")
end
if l_0_0 <= 10000000 then
  (mp.set_mpattribute)("//LUA:ZipRar7ZFileLE10M.A")
end
if l_0_0 <= 5000000 then
  (mp.set_mpattribute)("//LUA:ZipRar7ZFileLE5M.A")
end
return mp.CLEAN

