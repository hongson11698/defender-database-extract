-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000616b_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("InEmail") then
  if mp.HSTR_WEIGHT >= 21 then
    return mp.INFECTED
  else
    return mp.LOWFI
  end
else
  if mp.HSTR_WEIGHT >= 21 then
    return mp.LOWFI
  end
end
return mp.CLEAN

