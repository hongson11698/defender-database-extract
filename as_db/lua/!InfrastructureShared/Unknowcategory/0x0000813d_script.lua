-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000813d_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 3 then
  return mp.CLEAN
end
if pehdr.SizeOfImage < 282624 then
  return mp.CLEAN
end
if pehdr.SizeOfImage > 344064 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).Size < 192 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).Size > 240 then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if peattributes.lastscn_writable ~= true then
  return mp.CLEAN
end
if peattributes.no_relocs ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).VirtualAddress ~= 4096 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData < 4096 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData > 8192 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualAddress > 20480 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualAddress < 12288 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 262144 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData > 323584 then
  return mp.CLEAN
end
return mp.INFECTED

