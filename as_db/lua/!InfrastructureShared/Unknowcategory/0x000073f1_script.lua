-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000073f1_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:DelphiFile") and pehdr.NumberOfSections == 8 then
  (pe.set_image_filename)("\"myapp.exe\" /install")
  ;
  (pe.reemulate)()
end
;
(mp.set_mpattribute)("PUA:Block:Prifou")
return mp.INFECTED

