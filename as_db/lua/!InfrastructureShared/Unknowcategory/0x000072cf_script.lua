-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000072cf_luac 

-- params : ...
-- function num : 0
if peattributes.isdll == false or pehdr.NumberOfSections ~= 9 or pehdr.AddressOfEntryPoint ~= 0 or peattributes.hasexports == false then
  return mp.CLEAN
end
if (pe.get_exports)() > 1000 then
  return mp.INFECTED
end
return mp.CLEAN

