-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d53_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
local l_0_1 = {}
l_0_1[256] = "100"
l_0_1[1024] = "400"
l_0_1[4096] = "1000"
l_0_1[50000] = "50KB"
l_0_1[65536] = "10000"
l_0_1[262144] = "40000"
l_0_1[1048576] = "1M"
l_0_1[4194304] = "4M"
l_0_1[10485760] = "10M"
l_0_1[41943040] = "40M"
l_0_1[104857600] = "100M"
l_0_1[524288000] = "500M"
l_0_1[1073741824] = "1G"
for l_0_5,l_0_6 in pairs(l_0_1) do
  if l_0_0 <= l_0_5 then
    (mp.set_mpattribute)("LUA:FileSizeLE" .. l_0_6 .. ".B")
  else
    ;
    (mp.set_mpattribute)("LUA:FileSizeGT" .. l_0_6 .. ".B")
  end
end
return mp.CLEAN

