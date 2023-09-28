-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000827f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 <= 256 then
  (mp.set_mpattribute)("LUA:FileSizeLE100.A")
  return mp.CLEAN
end
if l_0_0 <= 512 then
  (mp.set_mpattribute)("LUA:FileSizeLE200.A")
  return mp.CLEAN
end
if l_0_0 <= 1024 then
  (mp.set_mpattribute)("LUA:FileSizeLE400.A")
  return mp.CLEAN
end
if l_0_0 <= 2048 then
  (mp.set_mpattribute)("LUA:FileSizeLE800.A")
  return mp.CLEAN
end
if l_0_0 <= 4096 then
  (mp.set_mpattribute)("LUA:FileSizeLE1000.A")
  return mp.CLEAN
else
  ;
  (mp.set_mpattribute)("LUA:FileSizeGE1000.A")
end
if l_0_0 <= 8192 then
  (mp.set_mpattribute)("LUA:FileSizeLE2000.A")
  return mp.CLEAN
end
if l_0_0 <= 20480 then
  (mp.set_mpattribute)("LUA:FileSizeLE5000.A")
  return mp.CLEAN
end
if l_0_0 <= 65536 then
  (mp.set_mpattribute)("LUA:FileSizeLE10000.A")
  return mp.CLEAN
end
if l_0_0 > 131072 then
  (mp.set_mpattribute)("LUA:FileSizeGT20000.A")
else
  ;
  (mp.set_mpattribute)("LUA:FileSizeLE20000.A")
  return mp.CLEAN
end
if l_0_0 > 262144 then
  (mp.set_mpattribute)("LUA:FileSizeGT40000.A")
else
  ;
  (mp.set_mpattribute)("LUA:FileSizeLE40000.A")
  return mp.CLEAN
end
if l_0_0 > 524288 then
  (mp.set_mpattribute)("LUA:FileSizeGT80000.A")
else
  ;
  (mp.set_mpattribute)("LUA:FileSizeLE80000.A")
  return mp.CLEAN
end
if l_0_0 > 1048576 then
  (mp.set_mpattribute)("LUA:FileSizeGT1M.A")
else
  ;
  (mp.set_mpattribute)("LUA:FileSizeLE1M.A")
  return mp.CLEAN
end
if l_0_0 > 2097152 then
  (mp.set_mpattribute)("LUA:FileSizeGT2M.A")
end
if l_0_0 > 4194304 then
  (mp.set_mpattribute)("LUA:FileSizeGT4M.A")
end
if l_0_0 > 8388608 then
  (mp.set_mpattribute)("LUA:FileSizeGT8M.A")
end
if l_0_0 > 10485760 then
  (mp.set_mpattribute)("LUA:FileSizeGT10M.A")
end
if l_0_0 > 12582912 then
  (mp.set_mpattribute)("LUA:FileSizeGT12M.A")
end
if l_0_0 > 33554432 then
  (mp.set_mpattribute)("LUA:FileSizeGT20M.A")
end
if l_0_0 > 67108864 then
  (mp.set_mpattribute)("LUA:FileSizeGT40M.A")
end
if l_0_0 > 268435456 then
  (mp.set_mpattribute)("LUA:FileSizeGT100M.A")
end
if l_0_0 > 268435456 then
  (mp.set_mpattribute)("LUA:FileSizeGT256M.A")
end
if l_0_0 > 300000000 then
  (mp.set_mpattribute)("LUA:FileSizeGT300M.A")
end
if l_0_0 > 500000000 then
  (mp.set_mpattribute)("LUA:FileSizeGT500M.A")
end
if l_0_0 > 1000000000 then
  (mp.set_mpattribute)("LUA:FileSizeGT1G.A")
end
if l_0_0 >= 50000 then
  (mp.set_mpattribute)("Lua:FileSizeGEC350")
end
return mp.CLEAN

