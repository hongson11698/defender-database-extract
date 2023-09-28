-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006dad_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("NID:Trojan:Win32/RopProof.RPX!MTB") and (pesecs[7]).Name == ".ropf" and (mp.getfilesize)() < 85000 and peattributes.isdll == true then
  return mp.INFECTED
end
return mp.CLEAN

