-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d1a_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 5 then
  return mp.CLEAN
end
if pehdr.SectionAlignment == 4096 then
  return mp.CLEAN
end
if pehdr.FileAlignment == 512 then
  return mp.CLEAN
end
if pehdr.FileAlignment == 4096 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).Characteristics ~= 1744830496 then
  return mp.CLEAN
end
if pehdr.ImageBase ~= 65536 then
  return mp.CLEAN
end
if pehdr.Subsystem ~= 1 then
  return mp.CLEAN
end
return mp.INFECTED

