-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d54_luac 

-- params : ...
-- function num : 0
if peattributes.epatscnstart ~= true then
  return mp.CLEAN
end
if peattributes.lastscn_writable ~= true then
  return mp.CLEAN
end
if peattributes.epscn_writable ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData <= 512 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData >= 768 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).Size <= 0 then
  return mp.CLEAN
end
return mp.INFECTED

