-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007364_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections > 4 and pevars.epsec == pehdr.NumberOfSections and (pesecs[pehdr.NumberOfSections]).Name == "" and (mp.bitand)((pesecs[pehdr.NumberOfSections]).Characteristics, 3758096384) == 3221225472 then
  return mp.INFECTED
end
return mp.CLEAN

