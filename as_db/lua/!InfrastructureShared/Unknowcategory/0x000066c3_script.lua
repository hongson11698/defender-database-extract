-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000066c3_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("HSTR:SoftwareBundler:Win32/Avarus") then
  (pe.set_peattribute)("hstr_exhaustive", true)
  ;
  (pe.reemulate)()
end
;
(mp.set_mpattribute)("PUA:Block:Avarus")
return mp.INFECTED

