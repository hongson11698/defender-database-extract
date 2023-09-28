-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000bac_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((string.sub)((mp.getfilename)(), -4))
if l_0_0 == ".iso" or l_0_0 == ".img" then
  return mp.INFECTED
end
return mp.CLEAN

