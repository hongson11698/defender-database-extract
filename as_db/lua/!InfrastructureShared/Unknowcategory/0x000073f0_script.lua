-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000073f0_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched and (hstrlog[1]).VA == 4194905 and pehdr.AddressOfEntryPoint == 4112 and ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_IMPORT]).RVA == 4240 then
  return mp.INFECTED
end
return mp.CLEAN

