-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005ef1_luac 

-- params : ...
-- function num : 0
if (mp.bitand)(mp.HSTR_WEIGHT, 248) >= 8 then
  if (mp.bitand)(mp.HSTR_WEIGHT, 7) >= 1 then
    return mp.INFECTED
  end
  return mp.LOWFI
end
return mp.CLEAN

