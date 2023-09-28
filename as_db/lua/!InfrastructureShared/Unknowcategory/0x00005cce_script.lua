-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005cce_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
if not (string.find)(l_0_0, "/upload", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

