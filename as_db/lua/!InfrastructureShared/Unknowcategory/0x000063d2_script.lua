-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000063d2_luac 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.getfilesize)() < 238593 then
  if mp.HSTR_WEIGHT == 11 then
    return mp.SUSPICIOUS
  end
  if mp.HSTR_WEIGHT == 10 then
    return mp.LOWFI
  end
end
return mp.CLEAN

