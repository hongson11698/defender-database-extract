-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000079f5_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("Lua:VirTool:Win32/VMProtect.A") or mp.HSTR_WEIGHT >= 7 then
  (mp.set_mpattribute)("PUA:Block:TRexMiner")
  return mp.INFECTED
end
if peattributes.amd64_image then
  (mp.set_mpattribute)("do_exhaustivehstr_64bit_rescan_trex")
else
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan_trex")
end
return mp.CLEAN

