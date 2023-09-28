-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000618b_luac 

-- params : ...
-- function num : 0
if pehdr.AddressOfEntryPoint == 0 and (pe.get_exports)() > 646 and peattributes.isdll == true then
  return mp.INFECTED
end
return mp.CLEAN

