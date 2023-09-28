-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e44_luac 

-- params : ...
-- function num : 0
local l_0_0 = this_sigattrlog[3]
if not l_0_0 or not l_0_0.utf8p2 or not l_0_0.utf8p1 then
  return mp.CLEAN
end
local l_0_1 = (string.match)(l_0_0.utf8p2, ";vmregionsize:(%d+)")
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = tonumber(l_0_1)
if l_0_2 > 200000 or l_0_2 < 100000 then
  return mp.CLEAN
end
local l_0_3 = (string.match)(l_0_0.utf8p2, ";vmbaseaddress:(%d+)")
if not l_0_3 then
  return mp.CLEAN
end
local l_0_4, l_0_5 = (string.match)(l_0_0.utf8p1, "targetprocessppid:(%d+):(%d+)")
if not l_0_4 or not l_0_5 then
  return mp.CLEAN
end
local l_0_6 = (string.format)("pid:%s,ProcessStart:%s,address:%s,size:0", l_0_4, l_0_5, l_0_3)
;
(mp.TriggerScanResource)("ems", l_0_6)
return mp.INFECTED

