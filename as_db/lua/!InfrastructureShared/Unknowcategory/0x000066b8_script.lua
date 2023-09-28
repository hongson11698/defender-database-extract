-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000066b8_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 111 and mp.HSTR_WEIGHT % 100 >= 11 and mp.HSTR_WEIGHT % 10 >= 1 then
  if pehdr.Machine == 34404 then
    (mp.changedetectionname)(805306476)
  end
  return mp.INFECTED
end
return mp.LOWFI

