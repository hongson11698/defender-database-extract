-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000614a_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 200 then
  return mp.INFECTED
else
  if mp.HSTR_WEIGHT >= 4 and mp.HSTR_WEIGHT < 20 then
    (mp.changedetectionname)(805306498)
    return mp.INFECTED
  end
end
return mp.CLEAN

