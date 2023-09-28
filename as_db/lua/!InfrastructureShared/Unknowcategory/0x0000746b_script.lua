-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000746b_luac 

-- params : ...
-- function num : 0
if epcode[1] ~= 106 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < 5 or (pesecs[5]).Name ~= ".import" then
  return mp.CLEAN
end
if (pe.query_import)(pe.IMPORT_STATIC, 2142642642) then
  return mp.INFECTED
end
return mp.CLEAN

