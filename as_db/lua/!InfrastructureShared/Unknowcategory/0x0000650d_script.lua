-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000650d_luac 

-- params : ...
-- function num : 0
local l_0_0 = "(.+\\)"
local l_0_1 = (string.match)((string.lower)((this_sigattrlog[1]).utf8p1), l_0_0)
if l_0_1 ~= nil and l_0_1 == (string.match)((string.lower)((this_sigattrlog[2]).utf8p1), l_0_0) then
  return mp.INFECTED
end
return mp.CLEAN

