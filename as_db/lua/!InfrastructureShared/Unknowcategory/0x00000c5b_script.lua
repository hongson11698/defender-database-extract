-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000c5b_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattributesubstring)("PUA:ML:Blocked:") then
  (mp.set_mpattribute)("Lua:PUAPoorCertRepML")
end
if (mp.get_mpattributesubstring)("PUA:ML:Staged:") then
  (mp.set_mpattribute)("Lua:PUAPoorCertRepMLStaged")
end
return mp.CLEAN

