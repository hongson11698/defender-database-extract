-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f33_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 8192 or l_0_0 > 13631488 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(4096, 4096)
if (mp.readu_u32)(l_0_1, 1) ~= 1852400232 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_1, 113) ~= 1414483794 then
  return mp.CLEAN
end
if (string.find)(l_0_1, "\000SAM\000", 1, true) then
  (mp.set_mpattribute)("BM_REGHIVE_SAM")
  return mp.INFECTED
end
if (string.find)(l_0_1, "\000Cache\000", 1, true) then
  (mp.set_mpattribute)("BM_REGHIVE_SECURITY")
  return mp.INFECTED
end
if (string.find)(l_0_1, "ActivationBroker", 1, true) then
  (mp.set_mpattribute)("BM_REGHIVE_SYSTEM")
  return mp.INFECTED
end
return mp.CLEAN

