-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\84b38d2a33ee\0x00007888_luac 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[2]).p2
local l_0_1 = (crypto.ComputeEntropy)((string.sub)(l_0_0, 1, 512))
if l_0_1 >= 6 then
  (bm.add_related_string)("boot_entropy", "ent=" .. l_0_1, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN

