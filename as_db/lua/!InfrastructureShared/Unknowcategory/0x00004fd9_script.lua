-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00004fd9_luac 

-- params : ...
-- function num : 0
local l_0_0 = (hstrlog[1]).hitcount
local l_0_1 = (hstrlog[2]).hitcount
if l_0_0 > 15 or l_0_1 > 15 or l_0_0 + l_0_1 > 15 then
  return mp.INFECTED
end
return mp.CLEAN

