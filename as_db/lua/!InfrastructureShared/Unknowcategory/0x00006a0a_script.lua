-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006a0a_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2048000 and pehdr.NumberOfSections == 5 and (mp.get_mpattribute)("pea_headerchecksum0") and (pesecs[5]).Name == "" then
  return mp.INFECTED
end
return mp.CLEAN

