-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007776_luac 

-- params : ...
-- function num : 0
if pevars.sigaddr ~= pehdr.ImageBase + pehdr.AddressOfEntryPoint then
  return mp.CLEAN
end
if (pe.query_import)(pe.IMPORT_STATIC, 214667374) and (mp.crc32)(-1, epcode, 17, 17) == 3988924912 then
  return mp.INFECTED
end
return mp.CLEAN

