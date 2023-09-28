-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b66_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections >= 2 and peattributes.isexe and peattributes.lastscn_writable and peattributes.lastscn_executable and peattributes.lastscn_vfalign and (pesecs[pehdr.NumberOfSections]).Name == ".text" and (pesecs[pehdr.NumberOfSections]).VirtualAddress <= (hstrlog[1]).VA - pehdr.ImageBase then
  return mp.INFECTED
end
return mp.CLEAN

