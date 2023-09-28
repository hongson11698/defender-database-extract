-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006dbf_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 4 or peattributes.isdll == false or peattributes.hasexports == false or peattributes.epinfirstsect == false or (pesecs[1]).SizeOfRawData ~= 61440 then
  return mp.CLEAN
end
return mp.INFECTED

