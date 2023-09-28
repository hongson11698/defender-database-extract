-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000063d6_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((sigattr_head[1]).utf8p2)
if (string.find)(l_0_0, "/x", 1, true) and (string.find)(l_0_0, "/s", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

