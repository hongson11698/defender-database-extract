-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\19b3d68f018d\0x000006ea_luac 

-- params : ...
-- function num : 0
local l_0_0 = this_sigattrlog[1]
if not l_0_0 or not l_0_0.utf8p2 then
  return mp.CLEAN
end
takeMemorySnapshot(l_0_0.utf8p2)
return mp.INFECTED

