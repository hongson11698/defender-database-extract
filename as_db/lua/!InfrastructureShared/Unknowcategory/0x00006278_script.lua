-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006278_luac 

-- params : ...
-- function num : 0
if not (pe.isdynamic_va)(pevars.sigaddr) then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("PEBMPAT:Virus:Win32/Xpaj.gen!F") then
  return mp.CLEAN
end
return mp.INFECTED

