-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000504b_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 9 then
  (mp.set_mpattribute)("PUA:Block:BadMirror.A")
  return mp.INFECTED
end
return mp.LOWFI

