-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000064b0_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 410000 and pehdr.NumberOfSections == 3 and pevars.epsec == 1 then
  (mp.set_mpattribute)("attrmatch_rescan_psif")
end
return mp.CLEAN

