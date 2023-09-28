-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000065a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[3]).timestamp
local l_0_1 = (this_sigattrlog[2]).timestamp
if l_0_0 < l_0_1 then
  return mp.CLEAN
end
if l_0_0 - l_0_1 > 10000000 then
  return mp.CLEAN
end
return mp.INFECTED

