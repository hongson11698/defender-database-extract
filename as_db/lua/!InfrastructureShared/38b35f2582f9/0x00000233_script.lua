-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\38b35f2582f9\0x00000233_luac 

-- params : ...
-- function num : 0
local l_0_0 = getTamperProtectionSource()
if l_0_0 and (mp.bitand)(l_0_0, 1) == 1 then
  return mp.INFECTED
end
return mp.CLEAN

