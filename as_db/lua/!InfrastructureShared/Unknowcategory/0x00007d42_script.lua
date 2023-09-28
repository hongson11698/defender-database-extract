-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d42_luac 

-- params : ...
-- function num : 0
if pevars.epsec < pehdr.NumberOfSections or (mp.readu_u32)(epcode, 1) ~= 2030270560 or peattributes.epoutofimage or peattributes.amd64_image or (mp.getfilesize)() < pehdr.SizeOfImage then
  (mp.changedetectionname)(805306412)
  return mp.INFECTED
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_INMEMORY then
  return mp.CLEAN
end
return mp.INFECTED

