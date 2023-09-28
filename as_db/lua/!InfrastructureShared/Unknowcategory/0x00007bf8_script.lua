-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007bf8_luac 

-- params : ...
-- function num : 0
local l_0_0 = this_sigattrlog[9]
if not l_0_0 or not l_0_0.utf8p1 then
  return mp.CLEAN
end
local l_0_1 = this_sigattrlog[8]
if not l_0_1 or not l_0_1.utf8p2 then
  return mp.CLEAN
end
local l_0_2 = tonumber(l_0_0.utf8p1)
if l_0_2 < 9000 or l_0_2 > 50000 then
  return mp.CLEAN
end
local l_0_3 = (string.match)(l_0_1.utf8p2, "(%d+);regionsize:")
if not l_0_3 then
  return mp.CLEAN
end
local l_0_4 = (string.format)("%s,address:%s,size:0", l_0_0.ppid, l_0_3)
;
(mp.TriggerScanResource)("ems", l_0_4)
return mp.INFECTED

