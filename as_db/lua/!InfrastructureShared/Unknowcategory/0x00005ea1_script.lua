-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005ea1_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if mp.HSTR_WEIGHT >= 6 and l_0_0 < 327680 then
  (mp.set_mpattribute)("PUA:Block:Bundlore.P")
  return mp.INFECTED
end
return mp.LOWFI

