-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000073b3_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 100 then
  return mp.INFECTED
else
  if mp.HSTR_WEIGHT >= 10 and mp.HSTR_WEIGHT < 50 then
    (mp.changedetectionname)(805306522)
    return mp.INFECTED
  else
    if mp.HSTR_WEIGHT > 1 then
      (mp.set_mpattribute)("SLF:Ransom:Win32/Wadhrama.A")
    end
  end
end
return mp.CLEAN

