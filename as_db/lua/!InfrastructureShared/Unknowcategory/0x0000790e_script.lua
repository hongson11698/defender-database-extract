-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000790e_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  (mp.set_mpattribute)("PUA:Block:MinerGate")
  ;
  (mp.set_mpattribute)("Company:CoinMiner32:MinerGate")
  return mp.INFECTED
end
if peattributes.amd64_image then
  (mp.set_mpattribute)("do_exhaustivehstr_64bit_rescan_minergate")
else
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan_minergate")
end
return mp.CLEAN

