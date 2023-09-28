-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\124b3be9d1312\0x00000584_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_1) do
  if l_0_6.reason == bm.RELATIONSHIP_INJECTION then
    (bm.add_threat_process)(l_0_6.ppid)
  end
end
AddResearchData("BM", true)
return mp.INFECTED

