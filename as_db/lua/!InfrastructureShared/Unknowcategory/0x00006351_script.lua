-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006351_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 3 and (mp.get_mpattribute)("pea_headerchecksum0") and (mp.getfilesize)() < 1024000 then
  return mp.INFECTED
end
return mp.CLEAN

