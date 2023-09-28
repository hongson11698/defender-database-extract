-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000064b7_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections > 2 and ((pesecs[2]).Name == ".rdat" or (pesecs[2]).Name == ".rtxt") then
  (mp.set_mpattribute)("HSTR:Virus:Win32/Nemim!mother")
end
return mp.INFECTED

