-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006d32_luac 

-- params : ...
-- function num : 0
if (hstrlog[2]).VA < pehdr.ImageBase + (pesecs[1]).VirtualAddress + 240 and (hstrlog[1]).VA + 10704 < pehdr.ImageBase + pehdr.AddressOfEntryPoint then
  return mp.SUSPICIOUS
end
return mp.CLEAN

